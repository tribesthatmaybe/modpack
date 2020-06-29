#!/usr/bin/env python3
import hashlib
import json
import os
import yaml
import fire


def root_path():
    my_path = os.path.dirname(__file__)
    return os.path.dirname(my_path)

def convert_lore(lore_file):
    lore_yaml = yaml.safe_load(open(lore_file, 'r'))
    if 'title' not in lore_yaml:
        raise Exception("title missing from %s" % lore_file)
    if 'text' not in lore_yaml and \
       'source' not in lore_yaml:
        raise Exception("one of source or text must be present in %s" % lore_file)

    lore_obj = {
        'key': {
            'category': 'General',
            'id': lore_yaml['title'].replace(' ', '').lower()
        },
        'content': {
            'title': lore_yaml['title']
        },
        'sortingIndex': 0,
        'requirements': [],
        'autoAdd': True,
        'defaultLore': False,
        'trigger': None,
        'action': None
    }
    if 'category' in lore_yaml:
        lore_obj['key']['category'] = lore_yaml['category']

    if 'text' in lore_yaml:
        lore_obj['content']['body'] = "%s\n" % lore_yaml['text']

    if 'source' in lore_yaml:
        lore_text_file = "%s/%s.txt" % (
            os.path.dirname(lore_file),
            os.path.splitext(os.path.basename(lore_file))[0]
        )
        lore_text = open(lore_text_file, 'r').read()
        lore_obj['content']['body'] = lore_text

    return lore_obj

def do_thing(lore_suffix='lore', dest_suffix='src/config/loreexpansion/lore'):
    lore_path = "%s/%s" % (root_path(), lore_suffix)
    lore_files = []
    for (dirpath, dirnames, filenames) in os.walk(lore_path):
        if dirpath == 'static':
            continue
        for lorefile in filenames:
            if os.path.splitext(lorefile)[1] == '.yml':
                lore_files.append("%s/%s" % (dirpath, lorefile))
        for (subdir, subdirnames, subfiles) in os.walk("%s/%s" % (dirpath, dirnames)):
            for lorefile in subfiles:
                if os.path.splitext(lorefile)[1] == '.yml':
                    lore_files.append("%s/%s/%s" % (dirpath, subdir, lorefile))

    print("generating %s bits of lore" % len(lore_files))
    for lore_file in lore_files:
        lore_json = convert_lore(lore_file)
        lore_key = "%s %s" % (lore_json['key']['category'], lore_json['content']['title'])
        lore_sha = hashlib.sha256(lore_key.encode()).hexdigest()
        lore_dest = "%s/%s.json" % (dest_suffix, lore_sha)
        lore_h = open(lore_dest, 'w')
        lore_h.write(json.dumps(lore_json, indent=4))
        lore_h.close()
        print("Wrote lore - %s %s" % (lore_json['key']['category'], lore_json['content']['title']))

if __name__ == '__main__':
    fire.Fire(do_thing)
