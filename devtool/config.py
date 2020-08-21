"""devtool config junk"""
import logging
import os
import yaml
from ftplib import FTP

LOG = logging.getLogger(__name__)

DIMENSION_DIRS = {
    -1: 'DIM-1/region',
    0: 'region',
    1: 'region',
    1001: 'DIM1001/region'
}

class Config(object):
    """Config object

    Used by basically every actionable object in the dev tool.
    """

    _config_file = "/mnt/devsync.yml"
    def __init__(self, config_file=None):
        if config_file:
            self._config_file = config_file

        if not os.path.exists(self._config_file):
            raise Exception("Unable to load config from %s" % self._config_file)

        config_obj = yaml.safe_load(open(self._config_file, 'r'));

        # validate / load paths (used by everything basically)
        if 'artifact_path' not in config_obj or \
           'repo_path' not in config_obj:
            raise Exception('repo_path and artifact_path should be defined')

        if not os.path.exists(config_obj['artifact_path']) or \
           not os.path.isdir(config_obj['artifact_path']):
            raise Exception("artifact_path %s is missing or not a directory" % config_obj['artifact_path'])

        if not os.path.exists(config_obj['repo_path']) or \
           not os.path.isdir(config_obj['repo_path']):
            raise Exception("repo_path %s is missing or not a directory" % config_obj['repo_path'])

        self.artifact_path = config_obj['artifact_path']
        self._repo_path = config_obj['repo_path']

        # ftp and server config (used by quest/rc/sync)
        if 'host' not in config_obj or \
           'user' not in config_obj or \
           'server' not in config_obj or \
           'ftp_password' not in config_obj:
            raise Exception('server / ftp config missing')

        self.host = config_obj['host']
        self.ftp_user = "%s.%s" % (config_obj['user'], config_obj['server'])
        self.ftp_password = config_obj['ftp_password']
        self.user = config_obj['user']
        self.server = config_obj['server']

        # rcon config (used by admin/user)
        if 'rcon_port' not in config_obj or \
           'rcon_key' not in config_obj:
            raise Exception('rcon configuration invalid')

        self.rcon_port = int(config_obj['rcon_port'])
        self.rcon_key = config_obj['rcon_key']

        # multimc config (used by admin)
        if 'api_host' not in config_obj:
            raise Exception('multicraft base not defined')
        if 'api_key' not in config_obj:
            raise Exception('api_key not defined')

        self.api_host = config_obj['api_host']
        self.api_key = config_obj['api_key']

        # curse config (used for artifact upload)
        if 'curse_token' not in config_obj or \
           'curse_project' not in config_obj:
            raise Exception('curse config missing')

        self.curse_token = config_obj['curse_token']
        self.curse_project = config_obj['curse_project']

    def repo_path(self, suffix=None, base=None):
        real_base = self._repo_path
        if base:
            real_base = base

        if not suffix:
            return real_base

        return "%s/%s" % (real_base, suffix)
