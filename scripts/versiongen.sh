#!/usr/bin/env bash

set -e
SCRIPTDIR=$( cd "${0%/*}" && pwd)
ROOTDIR="${SCRIPTDIR%/*}"

problems() {
    echo "Error: ${*}"
    exit 1
}

RELEASE_FILE="${ROOTDIR}/release"
RELEASE=""
if [ -e "$RELEASE_FILE" ] ; then
    RELEASE="$(cat "$RELEASE_FILE")"
fi
if ! git describe --tags --exact-match "$(git rev-parse HEAD)" &> /dev/null ; then
    docker run -v "${ROOTDIR}:/mnt" -e GITHUB_RUN_ID -e GITHUB_RUN_NUMBER \
           otakup0pe/avakas show /mnt \
	       --pre-build --pre-build-prefix="$RELEASE" --pre-build-date --build \
		   2> /dev/null 1> "${ROOTDIR}/.version"
else
    if [ -z "$RELEASE" ] ; then
        docker run -v "${ROOTDIR}:/mnt" -e GITHUB_RUN_ID -e GITHUB_RUN_NUMBER \
               otakup0pe/avakas show /mnt \
	           --pre-build --pre-build-prefix="$RELEASE" \
			   2> /dev/null 1> "${ROOTDIR}/.version"
    else
        docker run -v "${ROOTDIR}:/mnt" \
               otakup0pe/avakas show /mnt \
			   2> /dev/null 1> "${ROOTDIR}/.version"
    fi
fi

docker run -v "${ROOTDIR}:/mnt" \
       otakup0pe/avakas show /mnt \
	   2> /dev/null 1> "${ROOTDIR}/.version-docker"
