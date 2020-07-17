import logging
import os
import sys
from base import BaseWidget

LOG = logging.getLogger(__name__)

class QuestWidget(BaseWidget):
    def __init__(self):
        super(QuestWidget, self).__init__()

    def quest_base(self, suffix):
        return "config/betterquesting/%s" % suffix

    def quest_path(self, suffix):
        return self.config.repo_path(self.quest_base(suffix))

    def quest(self, action, save=None):
        quest_name = save
        quest_suffix = None
        if not save:
            quest_suffix = 'DefaultQuests.json'
            quest_name = 'default'
        else:
            quest_suffix = "saved_quests/%s.json" % quest_name

        if action == 'download':
            if not self.ftp_exists(self.quest_base(quest_suffix)):
                LOG.error("Quest '%s' not found on server" % quest_name)
                sys.exit(1)

            self.ftp_get(self.quest_base(quest_suffix),
                         self.quest_path(quest_suffix))
            LOG.info("Succesfully downloaded quest '%s'" % quest_name)
        elif action == 'upload':
            if not os.path.exists(self.quest_path(quest_suffix)):
                LOG.error("Quest '%s' not found locally" % quest_name)

            self.ftp_put(self.quest_path(quest_suffix),
                         self.quest_base(quest_suffix))
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

    def rc_base(self, location, suffix=None):
        structure_path = "structures/%s" % location
        if suffix:
            structure_path += "/%s" % suffix

        return structure_path

    def rc_path(self, location, suffix):
        return self.config.repo_path(self.rc_base("%s/%s" % (location, suffix)))

    def list_things(self, location):
        if not location:
            LOG.error("Must specify a location (active/inactive)")
            sys.exit(1)

        struct_files = {}
        for structure in self.ftp_ls(self.rc_base(location)):
            [thing, ext] = structure.split(".")
            if ext in struct_files:
                struct_files[ext].append(thing)
            else:
                struct_files[ext] = [thing]

        return struct_files

    def get_things(self, location, thing):
        if not location:
            LOG.error("Must specify a location (active/inactive)")
            sys.exit(1)

        import ipdb ; ipdb.set_trace()
        if not self.ftp_exists(self.rc_base(location, thing)):
            LOG.error("reccom thing %s not found" % thing)
            sys.exit(1)

        self.ftp_get(self.rc_base(location, thing), self.rc_path(location, thing))

    def structure(self, action, location, name):
        if action == 'list':
            for structure in self.list_things(location).get('rcst', []):
                LOG.info("Found structure '%s' on server" % structure)
        elif action == 'download':
            if not name:
                LOG.error("Must specify a thing")
                sys.exit(1)

            self.get_things(location, "%s.rcst" % name)
            LOG.info("Succesfully downloaded %s structure '%s'" % (location, name))
        else:
            raise Exception('invalid action')

    def transform(self, action, location, name):
        if action == 'list':
            for transform in self.list_things(location).get('rcmt', []):
                LOG.info("Found transform '%s' on server" % transform)
        elif action == 'download':
            if not name:
                LOG.error("Must specify a thing")
                sys.exit(1)

            self.get_things(location, "%s.rcmt" % name)
            LOG.info("Succesfully downloaded %s transform '%s'" % (location, name))
        else:
            raise Exception('invalid action')

    def inventory(self, action, location, name):
        if action == 'list':
            for inventory in self.list_things(location).get('rcig', []):
                LOG.info("Found inventory generator '%s' on server" % inventory)
        elif action == 'download':
            if not name:
                LOG.error("Must specify a thing")
                sys.exit(1)

            self.get_things(location, "%s.rcig" % name)
            LOG.info("Succesfully downloaded %s inventory generatir '%s'" % (location, name))
        else:
            raise Exception('invalid action')
