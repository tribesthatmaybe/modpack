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

if [ ! -e /tmp/locales-tho ] ; then
    locale-gen en_US.UTF-8
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
    touch /tmp/locales-tho
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

if [ -d "/packmaker" ] && [ -e "/packmaker/setup.py" ] ; then
    echo "packmaker override!"
    cd /packmaker
    python3 setup.py install
fi

if [ "$ACTION" == "build" ] ; then
    cd /mnt
    packmaker updatedb
    packmaker --config /usr/local/etc/packmaker.conf lock
    packmaker --config /usr/local/etc/packmaker.conf build-curseforge
elif [ "$ACTION" == "server" ] ; then
    cd /mnt
    packmaker updatedb
    packmaker --config /usr/local/etc/packmaker.conf lock
    packmaker --config /usr/local/etc/packmaker.conf build-server
elif [ "$ACTION" == "loregen" ] ; then
    cd /mnt
    ./scripts/loregen.py
elif [ "$ACTION" == "shell" ] ; then
    cd /mnt
    echo "time to mod"
    bash
    echo "dom ot emit"
else
    problems "what u doin"
fi
