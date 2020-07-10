#!/usr/bin/env python3
import logging
import os
import sys
import fire
import mutables
import user
import admin
import sync
from config import Config

LOG = logging.getLogger(__name__)
logging.basicConfig(level=logging.INFO)

class DevWidget(object):
    def quest(self, action, save=None):
        mutables.QuestWidget().quest(action, save)

    def reccom(self, subtype, action, location, name=None):
        if subtype == 'structure':
            mutables.RecurrentWidget().structure(action, location, name)
        elif subtype == 'transform':
            mutables.RecurrentWidget().transform(action, location, name)
        elif subtype == 'inventory':
            mutables.RecurrentWidget().inventory(action, location, name)
        else:
            LOG.error("invalid subtype")
            sys.exit(1)

    def user(self, action, name=None):
        user.UserWidget().basic(action, name)

    def logs(self):
        admin.AdminWidget().logs()

    def tail(self):
        admin.AdminWidget().tail()

    def control(self, action):
        admin.AdminWidget().control(action)

    def sync(self):
        sync.SyncWidget().sync()

if __name__ == '__main__':
    fire.Fire(DevWidget)
