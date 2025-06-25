FROM ubuntu:20.04

ARG VERSION=0.0.0

LABEL maintainer='ttmb dev <info@tribesthatmay.be>'
LABEL version="${VERSION}"

RUN mkdir /usr/local/share/ttmb
RUN apt-get update && apt-get install -y python3-pip git-core vim-common locales curl
RUN locale-gen en_US.UTF-8
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
RUN touch /tmp/locales-tho

RUN mkdir /usr/local/etc/ipython
COPY ipython_config.json /usr/local/etc/ipython

COPY requirements.txt /usr/local/share/ttmb/
RUN pip3 install -r /usr/local/share/ttmb/requirements.txt

RUN curl -so /usr/local/bin/packwiz http://assets.tribesthatmay.be/tools/packwiz
RUN chmod +x /usr/local/bin/packwiz

COPY scripts/entrypoint.sh /usr/local/bin/ttmb-entrypoint
RUN chmod ugo+rx /usr/local/bin/ttmb-entrypoint

COPY templates/curseforge.conf.j2 /usr/local/share/ttmb/
RUN chmod ugo+r /usr/local/share/ttmb/curseforge.conf.j2

ENTRYPOINT ["ttmb-entrypoint"]
