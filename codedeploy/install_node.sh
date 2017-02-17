#!/bin/bash

# Always source variables.sh for all the extra goodness
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${SCRIPTS_DIR}/variables.sh

NODE_VERSION="v6.9.5"

cd /tmp
curl -LO http://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.gz
tar xzf node-$NODE_VERSION-linux-x64.tar.gz
cp -rp node-$NODE_VERSION-linux-x64 /usr/local/
ln -s /usr/local/node-$NODE_VERSION-linux-x64 /usr/local/node
ln -s /usr/local/node-$NODE_VERSION-linux-x64/bin/node /usr/local/bin/node
ln -s /usr/local/node-$NODE_VERSION-linux-x64/bin/npm /usr/local/bin/npm
