#!/bin/bash

# Always source variables.sh for all the extra goodness
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${SCRIPTS_DIR}/variables.sh

NODE_FILE=node-v6.9.5-linux-x64.tar.xz

cd /tmp
curl -O https://nodejs.org/dist/v6.9.5/$NODE_FILE
tar -xvzf $NODE_FILE
cp $NODE_file/bin/* /usr/local/bin/
