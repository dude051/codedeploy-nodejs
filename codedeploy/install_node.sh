#!/bin/bash

# Always source variables.sh for all the extra goodness
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${SCRIPTS_DIR}/variables.sh

NODE_VERSION=node-v6.9.5-linux-x64
NODE_FILE=$NODE_VERSION.tar.xz

cd /tmp
curl -O https://nodejs.org/dist/v6.9.5/$NODE_FILE
tar -xvf $NODE_FILE
cp $NODE_VERSION/bin/* /usr/local/bin/
