import logging
import sys
from config import Config
from remote import Remote
from multicraftapi import MulticraftAPI
from mcipc.config import Credentials
from mcipc.rcon import Client

LOG = logging.getLogger(__name__)

class UserWidget(object):
    multicraft = None
    rcon_client = None

    def __init__(self):
        self.config = Config()
        self.remote = Remote()

    def basic(self, action, name):
        if action == 'list':
            response = self.remote.multi()("listPlayers", self.config.server)
            online = self.remote.rcon("list").split(':')[1].split(',')
            for _user_id, username in response['data']['Players'].items():
                if username in online:
                    LOG.info("User %s online" % username)
                else:
                    LOG.info("User %s" % username)
        elif action == 'op':
            if not name:
                LOG.error("must specify a username")
                sys .exit(1)
            self.rcon("op %s" % name)
            LOG.info("op'd %s" % name)
        elif action == 'deop':
            if not name:
                LOG.error("must specify a username")
                sys .exit(1)
            self.rcon("deop %s" % name)
            LOG.info("deop'd %s" % name)
