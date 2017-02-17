#!/bin/bash

# Always source variables.sh for all the extra goodness
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${SCRIPTS_DIR}/variables.sh

cd $APP_PATH
slc ctl create $APP_NAME

# Set cluster size
slc ctl set-size $APP_NAME 4

# Set environment
slc ctl env-set $APP_NAME NODE_ENV=$ENVIRONMENT
