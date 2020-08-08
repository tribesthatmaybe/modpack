#!/usr/bin/env bash

set -e
SCRIPTDIR=$( cd "${0%/*}" && pwd)
ROOTDIR="${SCRIPTDIR%/*}"

problems() {
    echo "Error: ${*}"
    exit 1
}

if ! command -v jinja2-cli &> /dev/null ; then
    pip install jinja2-cli
fi

if [ -n "$CI" ] ; then
    export PATH="${HOME}/.local/bin/:${PATH}"
fi
jinja2 -o "${ROOTDIR}/devsync.yml" \
       -D "stickypiston_user=${STICKYPISTON_USER}" \
       -D "stickypiston_server=${STICKYPISTON_SERVER}" \
       -D "stickypiston_host=${STICKYPISTON_HOST}" \
       -D "ftp_password=${FTP_PASSWORD}" \
       -D "api_key=${MULTICRAFT_API_KEY}" \
       -D "api_host=${MULTICRAFT_API_HOST}" \
       -D "rcon_port=${RCON_PORT}" \
       -D "rcon_password=${RCON_PASSWORD}" \
       -D "curseforge_token=${CURSEFORGE_TOKEN}" \
       "${ROOTDIR}/templates/devsync.yml.j2"
