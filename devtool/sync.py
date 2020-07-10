import logging
import os
import sys
from config import Config
from base import BaseWidget
LOG = logging.getLogger(__name__)

class SyncWidget(BaseWidget):
    def __init__(self):
        super(SyncWidget, self).__init__()

    def sync(self, clean=False):
        self.ftp_sync("config", clean, overwrite=True)
        self.ftp_sync("structures", clean, overwrite=True)
        self.ftp_sync("scripts", clean=True, overwrite=True)
        self.ftp_sync("mods", clean=True, base_path=self.config.server_path)
        self.ftp_sync("libraries", clean=True, base_path=self.config.server_path)
