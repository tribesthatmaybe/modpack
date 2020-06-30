FROM ubuntu:18.04

MAINTAINER 'ttmb dev <info@tribesthatmay.be>'
ARG VERSION=0.0.0
LABEL version="${VERSION}"
RUN mkdir /usr/local/share/ttmb
RUN apt-get update && apt-get install -y python3-pip git-core vim-common locales
RUN locale-gen en_US.UTF-8
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
RUN touch /tmp/locales-tho

COPY requirements.txt /usr/local/share/ttmb/
RUN pip3 install -r /usr/local/share/ttmb/requirements.txt

COPY scripts/entrypoint.sh /usr/local/bin/ttmb-entrypoint
RUN chmod +x /usr/local/bin/ttmb-entrypoint && mkdir /packmaker

COPY scripts/render-packmaker.sh /usr/local/bin/ttmb-render-packmaker
RUN chmod +x /usr/local/bin/ttmb-render-packmaker

COPY templates/curseforge.conf.j2 /usr/local/share/ttmb/

ENTRYPOINT ["ttmb-entrypoint"]
