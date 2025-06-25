#!/usr/bin/env bash
set -e

problems() {
    echo "Error: ${*}"
    exit 1
}

gen_configs() {
    jinja2 \
	-o "/mnt/build/pack/pack.toml" \
	-D "version=$(cat /mnt/.version)" \
	/mnt/templates/pack.toml.j2
}

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

if [ "$ACTION" == "client" ] ; then
    gen_configs
    cd /mnt/build/pack
    if [ ! -d "/mnt/build/release" ] ; then
	mkdir -p "/mnt/build/release"
    fi
    cp /mnt/index.toml /mnt/build/pack
    packwiz refresh
    packwiz curseforge export \
	    --output "/mnt/build/release/ttmb-client-$(cat /mnt/.version).zip"
elif [ "$ACTION" == "loregen" ] ; then
    cd /mnt
    ./scripts/loregen.py
elif [ "$ACTION" == "shell" ] ; then
    cd /mnt
    echo "time to mod"
    bash
    echo "dom ot emit"
elif [ "$ACTION" == "devsync" ] ; then
    VERSION="$1"
    if [ -z "$VERSION" ] ; then
        problems "must specify version"
    fi
    START="$(date +%s)"
    OFFLINE_THO=""
    STATUS=$(/mnt/devtool/devtool.py control status || true)
    if [ "$STATUS" != 'server is online' ] ; then
        echo "Server is already offline"
        OFFLINE_THO=1
    else
        /mnt/devtool/devtool.py chat "log off now; updating to ${VERSION}"
    fi
    READY="$OFFLINE_THO"
    while [ -z "$READY" ] ; do
        if ! /mnt/devtool/devtool.py user list | grep -q online ; then
            echo "No users online."
            READY=1
        else
            NOW="$(date +%s)"
            if [ $((NOW - START)) -gt 60 ] ; then
                while read -r userlist ; do
                    if ! grep 'online' <<< "$userlist" ; then
                        continue
                    fi
                    USER="$(cut -f 2 -d ' ' <<< "$userlist")"
                    /mnt/devtool/devtool.py user kick "$USER" "you had your chance"
                done < <(/mnt/devtool/devtool.py user list)
                READY=1
            else
                echo "Waiting for users to log off...."
                sleep 5
            fi
        fi
    done
    if [ -z "$OFFLINE_THO" ] ; then
        /mnt/devtool/devtool.py control stop
    fi
    START="$(date +%s)"
    READY="$OFFLINE_THO"
    while [ -z "$READY" ] ; do
        if [ "$(/mnt/devtool/devtool.py control status || true)" != "server is online" ] ; then
            READY=1
        else
            NOW="$(date +%s)"
            if [ $((NOW - START)) -gt 30 ] ; then
                problems "Gave up waiting for server to stop!"
            else
                echo "Waiting for server to stop....."
                sleep 5
            fi
        fi
    done
    echo "Updating server!"
    /mnt/devtool/devtool.py sync "$VERSION"
    /mnt/devtool/devtool.py control start
elif [ "$ACTION" == "upload" ] ; then
    echo "Uploading??????"
    if [ "$#" != 2 ] ; then
        problems "must specify version and release"
    fi
    VERSION="$1"
    RELEASE="$2"
    shift 2
    if [ -z "$VERSION" ] ; then
        problems "must specify version"
    fi
    /mnt/devtool/devtool.py upload "$VERSION" --release "$RELEASE"
else
    problems "what u doin"
fi
