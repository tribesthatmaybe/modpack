FROM ubuntu:20.04

MAINTAINER 'ttmb dev <info@tribesthatmay.be>'
ARG VERSION=0.0.0
LABEL version="${VERSION}"
RUN mkdir /usr/local/share/ttmb
RUN apt-get update && apt-get install -y python3-pip git-core vim-common locales
RUN locale-gen en_US.UTF-8
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
RUN touch /tmp/locales-tho

RUN mkdir /usr/local/etc/ipython
COPY ipython_config.json /usr/local/etc/ipython

COPY requirements.txt /usr/local/share/ttmb/
RUN pip3 install -r /usr/local/share/ttmb/requirements.txt

COPY scripts/entrypoint.sh /usr/local/bin/ttmb-entrypoint
RUN chmod ugo+rx /usr/local/bin/ttmb-entrypoint && mkdir /packmaker

COPY scripts/render-packmaker.sh /usr/local/bin/ttmb-render-packmaker
RUN chmod ugo+rx /usr/local/bin/ttmb-render-packmaker

COPY templates/curseforge.conf.j2 /usr/local/share/ttmb/
RUN chmod ugo+r /usr/local/share/ttmb/curseforge.conf.j2

COPY deps /deps
RUN if [ -e "/deps/packmaker/setup.py" ] ; then pip3 uninstall -y packmaker && cd /deps/packmaker && python3 setup.py install ; fi

ENTRYPOINT ["ttmb-entrypoint"]
