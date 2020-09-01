import json
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

class NPCWidget(BaseWidget):
    def __init__(self):
        super(NPCWidget, self).__init__()

    def npc_base(self, context, suffix=None):
        npc_path = "world/customnpcs/%s" % context
        if suffix:
            return "%s/%s" % (npc_path, suffix)

        return npc_path

    def npc_path(self, suffix):
        return self.config.repo_path("config/copy/customnpcs/%s" % suffix)

    def list_things(self, context):
        if not context:
            LOG.error("Must specify context (clones/quest/dialogs)")
            sys.exit(1)

        npc_files = {}
        for npc_thing in self.ftp_walk(self.npc_base(context)):
            npc_file = os.path.basename(npc_thing)
            npc_group = os.path.basename(os.path.dirname(npc_thing))
            [npc_name, _ext] = npc_file.split(".")
            if npc_group in npc_files:
                npc_files[npc_group].append(npc_name)
            else:
                npc_files[npc_group] = [npc_name]

        return npc_files

    def fetch_things(self, context):
        for fetch_path in self.ftp_walk(self.npc_base(context)):
            fetch_file = os.path.basename(fetch_path)
            fetch_name = os.path.splitext(fetch_file)[0]
            fetch_group = os.path.basename(os.path.dirname(fetch_path))
            dest_file = "%s/%s" % (self.npc_path("%s/%s" % (context, fetch_group)), fetch_file)
            self.ftp_get(fetch_path, dest_file)
            LOG.info("fetched %s" % fetch_path)

    def clone(self, action, group, name):
        if action == 'list':
            for clone_group, clones in self.list_things('clones').items():
                for clone in clones:
                    LOG.info("Group %s Clone - %s" % (clone_group, clone))
        elif action == 'download':
            clone_suffix = "%s/%s.json" % (group, name)
            clone_path = "%s/%s" % (self.npc_base('clones'), clone_suffix)
            dest_path = "%s/%s" % (self.npc_path('clones'), clone_suffix)
            dest_dir = os.path.dirname(dest_path)
            if not os.path.exists(dest_dir):
                os.mkdir(dest_dir, 0o750)

            self.ftp_get(clone_path, dest_path)
            LOG.info("fetched npc %s %s" % (group, name))

    def dialog(self, action):
        if action == 'list':
            for dialog_group, dialogs in self.list_things('dialogs').items():
                for dialog in dialogs:
                    LOG.info("%s Dialog #%s" % (dialog_group, dialog))
        elif action == 'download':
            self.fetch_things('dialogs')

    def quest(self, action):
        if action == 'list':
            for quest_group, quests in self.list_things('quests').items():
                for quest in quests:
                    LOG.info("%s Quest - %s" % (quest_group, quest))
        elif action == 'download':
            self.fetch_things('quests')
