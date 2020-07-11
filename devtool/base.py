import logging
import os
import sys
from ftplib import FTP
from config import Config

LOG = logging.getLogger(__name__)

class BaseWidget(object):
    ftp = None
    def __init__(self):
        self.config = Config()

    def ftp_plz(self):
        if not self.ftp:
            self.ftp = FTP(self.config.host)
            self.ftp.login(self.config.ftp_user, self.config.ftp_password)

        return self.ftp

    def ftp_ls(self, path=None):
        if not path:
            return self.ftp_plz().nlst()
        else:
            return self.ftp_plz().nlst(path)

    def ftp_exists(self, path):
        ftp_base = os.path.basename(path)
        ftp_dir = os.path.dirname(path)
        return ftp_base in self.ftp_ls(ftp_dir)

    def ftp_get(self, source, dest):
        with open(dest, 'wb') as fh:
            self.ftp_plz().retrbinary("RETR %s" % source, fh.write)

    def ftp_put(self, source, dest):
        with open(source, 'rb') as fh:
            self.ftp_plz().storbinary("STOR %s" % dest, fh)

    def ftp_mkdir(self, path):
        self.ftp_plz().mkd(path)

    def ftp_rm(self, path):
        if not self.ftp_exists(path):
            return

        self.ftp_plz().delete(path)

    def ftp_walk(self, path='/'):
        files_tho = []
        for file_deets in self.ftp_plz().mlsd(path):
            filename = file_deets[0]
            filetype = file_deets[1]['type']
            if path != '/':
                filepath = "%s/%s" % (path, filename)
            else:
                filepath = filename

            if filetype == 'file':
                files_tho.append(filepath)
            elif filetype == 'dir':
                files_tho += self.ftp_walk(filepath)

        return files_tho

    def walk_path(self, path):
        files_tho = []
        for (dirpath, dirnames, filenames) in os.walk(path):
            for filename in filenames:
                files_tho.append("%s/%s" % (dirpath, filename))

        return files_tho

    def ftp_sync(self, path, clean=False, overwrite=False, base_path=None):
        source_files = self.walk_path(self.config.base_path(path, base=base_path))
        local_files = [os.path.relpath(x, self.config.base_path(base=base_path)) for x in source_files]
        remote_files = self.ftp_walk(path)

        for remote_file in remote_files:
            if clean and \
               (remote_file not in local_files):
                LOG.warning("removing unrecognized remote file %s" % remote_file)
                self.ftp_rm(remote_file)

        legit_remote_dirs = []
        for source_file in source_files:
            remote_file = os.path.relpath(source_file, self.config.base_path(base=base_path))
            remote_dir = os.path.dirname(remote_file)
            if not remote_dir in legit_remote_dirs:
                if not self.ftp_exists(remote_dir):
                    self.ftp_mkdir(remote_dir)
                    LOG.info("creating missing remote dir %s" % remote_dir)

                legit_remote_dirs.append(remote_dir)

            if overwrite or \
               not self.ftp_exists(remote_file):
                self.ftp_put(source_file, remote_file)
                LOG.info("copied %s to %s" % (source_file, remote_file))
