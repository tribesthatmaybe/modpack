#!/usr/bin/env bash
set -e

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

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

cd /mnt
packmaker updatedb
packmaker --config /usr/local/share/etc/packmaker.conf lock
packmaker --config /usr/local/share/etc/packmaker.conf build-curseforge
