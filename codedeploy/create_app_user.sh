#!/bin/bash

# Always source variables.sh for all the extra goodness
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${SCRIPTS_DIR}/variables.sh

if [[ ! $(id -u $APP_USER) ]]; then
  useradd $APP_USER
fi
