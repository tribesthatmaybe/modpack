import logging
import os
import sys
from base import BaseWidget

LOG = logging.getLogger(__name__)

class QuestWidget(BaseWidget):
    def __init__(self):
        super(QuestWidget, self).__init__()

    def quest(self, action, save=None):
        quest_name = save
        quest_path = 'betterquesting/'
        if not save:
            quest_path += 'DefaultQuests.json'
            quest_name = 'default'
        else:
            quest_path += "saved_quests/%s.json" % quest_name

        quest_source = "config/%s" % quest_path
        if action == 'download':
            if not self.ftp_exists(quest_source):
                LOG.error("Quest '%s' not found on server" % quest_name)
                sys.exit(1)

            self.ftp_get(quest_source, self.config.base_path(quest_path))
            LOG.info("Succesfully downloaded quest '%s'" % quest_name)
        elif action == 'upload':
            if not os.path.exists(self.config.base_path(quest_path)):
                LOG.error("Quest '%s' not found locally" % quest_name)

            self.ftp_put(self.config.base_path(quest_path), quest_source)
            LOG.info("Succesfully uploaded quest '%s'" % quest_name)
        elif action == 'list':
            if save:
                if self.ftp_exists(quest_path):
                    LOG.info("Quest '%s' exists on server" % quest_name)
                else:
                    LOG.info("Quest '%s' does not exist on server" % quest_name)
            else:
                quests = self.ftp_ls("config/betterquesting/saved_quests")
                for remote_quest in quests:
                    LOG.info("Found quest '%s' on server" % os.path.splitext(remote_quest)[0])

        else:
             raise Exception('Invalid quest action')


class RecurrentWidget(BaseWidget):
    def __init__(self):
        super(RecurrentWidget, self).__init__()


    def list_things(self, location):
        structure_path = 'structures'
        if not location:
            LOG.error("Must specify a location (active/inactive)")
            sys.exit(1)

        structure_path += "/%s" % location

        struct_files = {}
        for structure in self.ftp_ls(structure_path):
            [thing, ext] = structure.split(".")
            if ext in struct_files:
                struct_files[ext].append(thing)
            else:
                struct_files[ext] = [thing]

        return struct_files

    def get_things(self, location, thing):
        structure_path = 'structures'
        if not location:
            LOG.error("Must specify a location (active/inactive)")
            sys.exit(1)

        structure_path += "/%s/%s" % (location, thing)
        if not self.ftp_exists(structure_path):
            LOG.error("reccom thing %s not found" % thing)
            sys.exit(1)

        self.ftp_get(structure_path, self.config.base_path(structure_path))

    def structure(self, action, location, name):
        if action == 'list':
            for structure in self.list_things(location).get('rcst', []):
                LOG.info("Found structure '%s' on server" % structure)
        elif action == 'download':
            self.get_things(location, "%s.rcst" % name)
            LOG.info("Succesfully downloaded %s structure '%s'" % (location, name))

    def transform(self, action, location, name):
        if action == 'list':
            for transform in self.list_things(location).get('rcmt', []):
                LOG.info("Found transform '%s' on server" % transform)
        elif action == 'download':
            self.get_things(location, "%s.rcmt" % name)
            LOG.info("Succesfully downloaded %s transform '%s'" % (location, name))

    def inventory(self, action, location, name):
        if action == 'list':
            for inventory in self.list_things(location).get('rcig', []):
                LOG.info("Found inventory generator '%s' on server" % inventory)
        elif action == 'download':
            self.get_things(location, "%s.rcig" % name)
            LOG.info("Succesfully downloaded %s inventory generatir '%s'" % (location, name))
