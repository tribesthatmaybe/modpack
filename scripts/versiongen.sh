#!/usr/bin/env bash

set -e
SCRIPTDIR=$( cd "${0%/*}" && pwd)
ROOTDIR="${SCRIPTDIR%/*}"

problems() {
    echo "Error: ${*}"
    exit 1
}

docker run -v "${ROOTDIR}:/mnt" \
       otakup0pe/avakas show /mnt \
	   2> /dev/null 1> "${ROOTDIR}/.version"
cp "${ROOTDIR}/.version" "${ROOTDIR}/.version-container"
