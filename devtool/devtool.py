#!/usr/bin/env python3
"""The TTMB Dev Tool

This is the entrypoint for our all singing all dancing devtool. This tool
allows us to do a bunch of devopsy junk to the server and local installs
and in theory makes our job easier.

"""
import logging
import os
import sys
import fire
import mutables
import user
import admin
import sync
import curse
from config import Config

LOG = logging.getLogger(__name__)
logging.basicConfig(level=logging.INFO)

class DevTool(object):
    """The Dev Tool

    *record scratch* yup thats me

    you are probably wondering why there is a bunch of devops in
    a minecraft modpack.

    same, lol.

    )'(
    """

    def quest(self, action, save=None):
        """quest manipulation

        This command is used to copy quests to/from the dev server.

        Args:
            action (str): The action to take. May either be "upload", "download", or "list"
            save (str): The quest to work with. Defaults to DefaultQuests
        """
        mutables.QuestWidget().quest(action, save)

    def reccom(self, subtype, action, location, name=None):
        """recurrent complex structure manipulation

        This command is used to copy structures to/from the dev server.

        Args:
            subtype (str): The rc data to work with. Can me "structure", "transform", or "inventory"
            action (str): The action to take. Can be "list","download"
            name (str): The name of the rc data.
        """
        if subtype == 'structure':
            mutables.RecurrentWidget().structure(action, location, name)
        elif subtype == 'transform':
            mutables.RecurrentWidget().transform(action, location, name)
        elif subtype == 'inventory':
            mutables.RecurrentWidget().inventory(action, location, name)
        else:
            LOG.error("invalid subtype")
            sys.exit(1)

    def user(self, action, name=None, reason=None):
        """user actions

        Args:
            action (str): The action to take. May be "list", "op", or "deop"
            name (str): The name of the user. Required by "op" and "deop"
        """
        widget = user.UserWidget()
        if action == 'kick':
            widget.kick(name, reason)
        else:
            widget.basic(action, name)

    def logs(self):
        """view logs"""
        admin.AdminWidget().logs()

    def tail(self):
        """tail logs"""
        admin.AdminWidget().tail()

    def chat(self, message):
        """send a message"""
        admin.AdminWidget().chat(message)

    def control(self, action):
        """server control/admin actions

        Args:
            action (str): May be one of "stop", "start", "restart", "status", or "online"
        """
        admin.AdminWidget().control(action)

    def sync(self, version, clean=False, local=False, only=None):
        """sync with server

        Args:
            version (str): The full version of the artifact to deploy
            clean (bool): Whether or not to remove unrecognized mutable files
            local (bool): Whether or not to deploy mutables from source instead of artifact
        """
        sync.SyncWidget().sync(version, clean, local, only)

    def nuke(self, keep_claimed=False):
        """nuke it from orbit

        This command will erase all the world / player / user data from the server.
        If you haven't saved a backup then all will be erased.
        Remember kids, feelings and emotions are moop, and may not be recycled.
        """
        sync.SyncWidget().nuke(keep_claimed)

    def upload(self, version, client_id=None):
        """upload to curseforge

        Upload the client and server artifacts to curseforge.

        Args:
            version (str): Artifact version
                This must be provided and the artifact must be available in the path
                pointed to by the "artifact_path" config entry.
            client_id (int, optional): client artifact file id
                If this is provided then only the server artifat will be uploaded
                and will be associated with the given file id.
        """
        curse.CurseAPI().upload(version, client_id=client_id)

if __name__ == '__main__':
    fire.Fire(DevTool)
