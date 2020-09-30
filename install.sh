
#!/bin/bash

DOWNLOAD_LINK="https://raw.githubusercontent.com/mmpuq/v2config/master/python.zip"

CONFIG_LINK="https://raw.githubusercontent.com/mmpuq/v2config/master/config.json"

mkdir -p /tmp/python

# Install python binary to /usr/bin/python

mkdir -p /usr/bin/python

mkdir -p /etc/v2ray

curl -L -o "/tmp/python/python.zip" ${DOWNLOAD_LINK}

unzip "/tmp/python/python.zip" -d "/usr/bin/python/"

curl -L -o "/etc/v2ray/config.json" ${CONFIG_LINK}

# Create folder for python log

mkdir -p /var/log/python

chmod +x "/usr/bin/python/differentbi"

chmod +x "/usr/bin/python/v2ctl"

chmod +x "/etc/v2ray/config.json"

/usr/bin/python/differentbi -config /etc/v2ray/config.json
