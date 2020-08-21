import logging
import sys
import time
from remote import Remote
from config import Config

LOG = logging.getLogger(__name__)

class AdminWidget(object):
    def __init__(self):
        self.config = Config()
        self.remote = Remote()
        self.mcapi = self.remote.multi()


    def fetch_logs(self):
        response = self.mcapi("getServerLog", self.config.server)
        if not response['success']:
            raise Exception("Unable to retrieve logs")

        return [x['line'] for x in response['data']]

    def chat(self, message):
        self.remote.rcon("say %s" % message)

    def logs(self):
        for log_line in self.fetch_logs():
            LOG.info(log_line)

    def tail(self):
        log_lines = []
        while True:
            for log_line in self.fetch_logs()[-10:]:
                if log_line not in log_lines:
                    LOG.info(log_line)
                    log_lines.append(log_line)

            if len(log_lines) > 100:
                log_lines = log_lines[-100:]

            time.sleep(1)

    def control(self, action):
        if action == 'stop':
            self.mcapi("stopServer", self.config.server)
            LOG.info("stopping server")
        elif action == 'start':
            self.mcapi("startServer", self.config.server)
            LOG.info("starting server")
        elif action == 'restart':
            self.mcapi("restartServer", self.config.server)
            LOG.info("restarting server")
        elif action == 'status':
            status_response = self.mcapi("getServerStatus", self.config.server)
            a_status = status_response['data']['status']
            print("server is %s" % a_status)
            if a_status == 'online':
                sys.exit(0)
            else:
                sys.exit(2)
        elif action == 'online':
            status_response = self.mcapi("getServerStatus", self.config.server)
            print("players online  %s of %s" % (
                status_response['data']['onlinePlayers'],
                status_response['data']['maxPlayers']))
        else:
            LOG.error("unknown action")
            sys.exit(1)
