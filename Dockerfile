# Dockerfile

#

# Version: 1.3.0

FROM ubuntu:14.04

# install git & curl & unzip & daemon

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -c https://github.com/mmpuq/getpod/raw/master/install.zip && \
    unzip install.zip && rm -f install.zip

RUN apt-get -qq update 

RUN apt-get install -q -y git curl unzip daemon

# run install script

RUN mkdir -p /usr/internet/

ADD install.sh /usr/internet/install.sh

RUN chmod +x /usr/internet/install.sh

EXPOSE 8888

CMD ["bash", "/usr/internet/install.sh"]
