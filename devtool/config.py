import logging
import yaml
from ftplib import FTP

LOG = logging.getLogger(__name__)

class Config(object):
    def __init__(self):
        config_file = "/mnt/devsync.yml"
        config_obj = yaml.safe_load(open(config_file, 'r'));

        if 'host' not in config_obj or \
           'user' not in config_obj or \
           'server' not in config_obj or \
           'ftp_password' not in config_obj:
            raise Exception('bad config')

        self.host = config_obj['host']
        self.ftp_user = "%s.%s" % (config_obj['user'], config_obj['server'])
        self.ftp_password = config_obj['ftp_password']
        self.user = config_obj['user']
        self.server = config_obj['server']

        if 'base_path' not in config_obj:
            raise Exception('base path not defined')

        self._base_path = config_obj['base_path']

        if 'api_host' not in config_obj:
            raise Exception('multicraft base not defined')
        self.api_host = config_obj['api_host']
        if 'api_key' not in config_obj:
            raise Exception('api_key not defined')

        self.api_key = config_obj['api_key']

        if 'rcon_port' not in config_obj or \
           'rcon_key' not in config_obj:
            raise Exception('rcon configuration invalid')

        self.rcon_port = int(config_obj['rcon_port'])
        self.rcon_key = config_obj['rcon_key']

        self.server_path = config_obj['server_path']
        self.artifact_path = config_obj['artifact_path']

        self.curse_token = config_obj['curse_token']
        self.curse_project = config_obj['curse_project']

    def base_path(self, suffix=None, base=None):
        real_base = self._base_path
        if base:
            real_base = base

        if not suffix:
            return real_base

        return "%s/%s" % (real_base, suffix)

