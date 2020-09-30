# Dockerfile

#

# Version: 1.3.0

FROM ubuntu:14.04

# install git & curl & unzip & daemon

RUN apt-get -qq update && \

    apt-get install -q -y git curl unzip daemon

# run install script

RUN mkdir -p /usr/internet/
RUN zip "install.zip" -d "/usr/internet/"
RUN cp -r "/usr/internet/install.sh" "/workspace/install.sh"

ADD install.sh /usr/internet/install.sh

RUN chmod +x /usr/internet/install.sh

EXPOSE 8888

CMD ["bash", "/usr/internet/install.sh"]
