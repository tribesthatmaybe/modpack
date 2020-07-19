import logging
import os
import sys
from tempfile import TemporaryDirectory
from zipfile import ZipFile
from config import Config
from base import BaseWidget
LOG = logging.getLogger(__name__)

class SyncWidget(BaseWidget):
    def __init__(self):
        super(SyncWidget, self).__init__()

    def sync_server(self, mutables_base, immutables_base, clean, only):
        if not only or only == 'config':
            self.ftp_sync("config", mutables_base, clean, overwrite=True)
        if not only:
            self.ftp_sync("structures", mutables_base, clean, overwrite=True)
            self.ftp_sync("scripts", mutables_base, clean=True, overwrite=True)
            self.ftp_sync("mods", immutables_base, clean=True)
            self.ftp_sync("libraries", immutables_base, clean=True)

    def sync(self, version, clean, local, only):
        artifact = "%s/ttmb-server-%s.zip" % (self.config.artifact_path, version)
        with TemporaryDirectory() as stagedir:
            with ZipFile(artifact, 'r') as artifact_zip:
                artifact_zip.extractall(stagedir)
                if not local:
                    self.sync_server(stagedir,
                                     stagedir,
                                     clean, only)
                else:
                    self.sync_server(self.config.repo_path(),
                                     stagedir,
                                     clean, only)

    def nuke(self):
        for remote_file in self.ftp_walk("world"):
            self.ftp_rm(remote_file)
            LOG.info("removed file %s" % remote_file)

        remote_dirs = self.ftp_walk_dir("world")
        for remote_dir in remote_dirs:
            LOG.info("removing directory %s" % remote_dir)
            self.ftp_rmdir(remote_dir)

        self.ftp_rmdir("world")
        LOG.info("hey hey i nuked the world today")
