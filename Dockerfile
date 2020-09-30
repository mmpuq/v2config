# Dockerfile

#

# Version: 1.3.0

FROM ubuntu:14.04

# install git & curl & unzip & daemon

RUN apt-get -qq update 

RUN apt-get install -q -y git curl unzip wget daemon

# run install script

RUN mkdir -p /usr/internet/

ADD install.zip /usr/internet/install.zip
RUN wget -c https://github.com/mmpuq/getpod/raw/master/install.zip && \
    unzip install.zip && rm -f install.zip


RUN chmod +x /usr/internet/install.sh

EXPOSE 8888

CMD ["bash", "/usr/internet/install.sh"]
