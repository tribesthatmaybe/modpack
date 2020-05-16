#!/usr/bin/env bash
set -e

problems() {
    echo "Error: ${*}"
    exit 1
}

if [ ! -e "/usr/local/etc/ttmb/packmaker.conf" ] ; then
    if [ ! -e "/mnt/config.yml" ] ; then
        problems "Unable to find config"
    fi

    jinja2 \
        -o /usr/local/etc/packmaker.conf \
        /usr/local/share/ttmb/curseforge.conf.j2 \
        /mnt/config.yml
fi

ACTION="shell"
if [ $# -gt 0 ] ; then
    ACTION="$1"
    shift
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

if [ ! -e /tmp/locales-tho ] ; then
    locale-gen en_US.UTF-8
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
    touch /tmp/locales-tho
fi

if [ "$ACTION" == "build" ] ; then
    cd /mnt
    packmaker updatedb
    packmaker --config /usr/local/etc/packmaker.conf lock
    packmaker --config /usr/local/etc/packmaker.conf build-curseforge
elif [ "$ACTION" == "shell" ] ; then
    cd /mnt
    echo "time to mod"
    bash
else
    problems "what u doin"
fi
