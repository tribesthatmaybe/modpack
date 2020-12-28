import logging
import sys
from config import Config
from multicraftapi import MulticraftAPI
from mcipc.rcon import Client

LOG = logging.getLogger(__name__)

class Remote(object):
    multicraft = None
    rcon_client = None

    def __init__(self):
        self.config = Config()
        self.api_url = "https://%s/api.php" % self.config.api_host

    def rcon(self, cmd):
        with Client(self.config.host, self.config.rcon_port, passwd=self.config.rcon_key) as client:
            client.login(passwd)
            return client.run(cmd)

    def multi(self):
        if not self.multicraft:
            self.multicraft = MulticraftAPI(self.api_url,
                                            self.config.user,
                                            self.config.api_key)

        return self.multicraft
