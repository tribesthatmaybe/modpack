#!/usr/bin/env bash

set -e

problems() {
    echo "Error: ${*}"
    exit 1
}

if [ ! -e "/mnt/.version" ] ; then
    problems "This must be run in the ttmb container"
fi

VERSION="$(cat /mnt/.version)"
jinja2 -o /mnt/packmaker.yml \
       -D "version=${VERSION}" \
       /mnt/templates/packmaker.yml.j2
