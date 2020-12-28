#!/usr/bin/env bash

set -e
SCRIPTDIR=$( cd "${0%/*}" && pwd)
ROOTDIR="${SCRIPTDIR%/*}"

RELEASEFILE="${ROOTDIR}/release"

RELEASE="stable"
if [ -e "$RELEASEFILE" ] ; then
    RELEASE="$(cat "$RELEASEFILE")"
    if [ "$RELEASE" != "alpha" ] && [ "$RELEASE" != "beta" ] ; then
        >&2 echo "invalid release ${RELEASE}"
        exit 2
    fi
fi

if [ "$RELEASE" == "stable" ] ; then
    echo "Release build"
    avakas bump . auto --branch=mainline
else
    echo "${RELEASE} build"
    avakas bump . auto --branch=mainline --build-meta --prerelease-prefix "$RELEASE"
fi
