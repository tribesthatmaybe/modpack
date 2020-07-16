import logging
import json
import os
import requests
from requests_toolbelt.multipart.encoder import MultipartEncoder
from config import Config

LOG = logging.getLogger(__name__)
logging.basicConfig(level=logging.INFO)

class CurseAPI(object):
    def __init__(self):
        self.config = Config()
    
    def headers(self):
        return {
            'X-Api-Token': self.config.curse_token
        }

    def get_version_id(self, version):
        url = 'https://minecraft.curseforge.com/api/game/versions'
        resp = requests.get(url, headers=self.headers())
        if resp.status_code != 200:
            raise Exception("Unepxected response %s from curse" % resp.status_code)
        versions = [x['id'] for x in resp.json() if x['name'] == version]
        if len(versions) != 1:
            raise Exception("Unable to find version %s in curse" % version)

        return versions[0]

    def upload_blob(self, filename, metadata):
        mp_encoder = MultipartEncoder(
            fields={
                'metadata': json.dumps(metadata),
                'file': (os.path.basename(filename),
                         open(filename, 'rb'),
                         'application/octet-stream')
            }
        )

        url = "https://minecraft.curseforge.com/api/projects/%s/upload-file" % self.config.curse_project
        headers = self.headers()
        headers['Content-Type'] = mp_encoder.content_type
        resp = requests.post(url,
                             data=mp_encoder,
                             headers=headers)

        if resp.status_code != 200:
            raise Exception("Unable to upload %s" % filename)

        return resp.json()['id']

    def upload_client(self, changelog, release, version):
        meta = {
            'changelogType': 'markdown',
            'changelog': changelog,
            'gameVersions': [self.get_version_id('1.12.2')],
            'releaseType': release
        }

        return self.upload_blob("%s/ttmb-client-%s.zip" % (self.config.artifact_path, version), meta)

    def upload_server(self, parent_id, version):
        meta = {
            'parentFileId': parent_id
        }
        return self.upload_blob("%s/ttmb-server-%s.zip" % (self.config.artifact_path, version), meta)
        
        
    def upload(self, version, p_changelog=None, p_release=None):
        changelog = 'dev build for testing only'
        release = 'alpha'

        if p_changelog:
            changelog = p_changelog
        if p_release:
            if p_release != 'alpha' and p_release != 'beta' and p_release != 'release':
                raise Exception("invalid release type %s" % p_release)
            release = p_release

        client_file_id = self.upload_client(changelog, release, version)
        server_file_id = self.upload_server(client_file_id, version)
        LOG.info("Uploaded client (%s) and server (%s) to curseforge" % (client_file_id, server_file_id))
