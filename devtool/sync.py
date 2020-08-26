import logging
import math
import os
import sys
from tempfile import TemporaryDirectory
from zipfile import ZipFile
import python_nbt.nbt as nbt
from config import Config
from config import DIMENSION_DIRS
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

    def _keep_path(self, path, preserve_regions):
        for dimension, dim_path in DIMENSION_DIRS.items():
            if "world/%s" % dim_path == path and \
               dimension in preserve_regions:
                return preserve_regions[dimension]

        return None

    def copy(self, source):
        file_path = "%s/config/%s" % (self.config.repo_path(), source)
        if not os.path.exists(file_path):
            LOG.error("Config file %s not found" % file_path)
            sys.exit(1)

        self.ftp_put(file_path, "config/%s" % source)
        LOG.info("Copied %s to server" % source)

    def nuke(self, keep_claimed):
        preserve_regions = {}
        if keep_claimed:
            with TemporaryDirectory() as workdir:
                source_file = "world/data/ftb_lib/teams/claimedchunks/honk.dat"
                claimed_file = "%s/honk.nbt" % workdir
                if not self.ftp_exists(source_file):
                    raise Exception("Unable to fetch claimed chunks file")
                self.ftp_get(source_file, claimed_file)
                claimed_nbt = nbt.read_from_nbt_file(claimed_file)
                for dimension in claimed_nbt['ClaimedChunks'].keys():
                    chunks = claimed_nbt['ClaimedChunks'][dimension]
                    dimension_regions = []
                    for chunk in chunks:
                        chunk_x = chunk['x'].value
                        chunk_z = chunk['z'].value
                        region_x = math.floor(int(chunk_x) / 32)
                        region_z = math.floor(int(chunk_z) / 32)
                        region_file = "r.%s.%s.mca" % (region_x, region_z)
                        if region_file not in dimension_regions:
                            dimension_regions.append(region_file)

                    preserve_regions[int(dimension)] = dimension_regions

        for remote_file in self.ftp_walk("world"):
            remote_dir = os.path.dirname(remote_file)
            remote_filename = os.path.basename(remote_file)
            skip_file = False
            if keep_claimed:
                keep_files = self._keep_path(remote_dir, preserve_regions)
                if keep_files:
                    if remote_filename in keep_files:
                        skip_file = True
                elif remote_dir.startswith('world/data/ftb_lib'):
                    skip_file = True

            if skip_file:
                LOG.info("keeping file %s" % remote_file)
            else:
                self.ftp_rm(remote_file)
                LOG.info("removed file %s" % remote_file)

        remote_dirs = self.ftp_walk_dir("world")
        kept_dirs = []
        for remote_dir in remote_dirs:
            keep_dir = False
            if keep_claimed:
                if self._keep_path(remote_dir, preserve_regions):
                    kept_dirs.append(remote_dir)
                    keep_dir = True
                elif remote_dir.startswith('world/data/ftb_lib'):
                    kept_dirs.append(remote_dir)
                    keep_dir = True
                else:
                    for maybe_keep_dir in kept_dirs:
                        if maybe_keep_dir.startswith(remote_dir):
                            keep_dir = True

            if keep_dir:
                LOG.info("keeping directory %s" % remote_dir)
            else:
                LOG.info("removing directory %s" % remote_dir)
                self.ftp_rmdir(remote_dir)

        if not keep_claimed:
            self.ftp_rmdir("world")

        LOG.info("hey hey i nuked the world today")
