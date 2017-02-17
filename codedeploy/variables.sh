#!/bin/bash
set -euo pipefail

# Use this file to set environment variables used by all scripts

## Calculated Variables
ENVIRONMENT=$(echo $DEPLOYMENT_GROUP_NAME | cut -d '-' -f1 | awk '{print toupper($0)}')
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ENVIRONMENT_SPECIFIC_VARIABLES="${SCRIPTS_DIR}/$(echo $ENVIRONMENT | awk '{print tolower($0)}').sh"
BUNDLE_DIR=/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive

# If there is a file for environment specific variables source it
if [[ -f $ENVIRONMENT_SPECIFIC_VARIABLES ]]; then
  source $ENVIRONMENT_SPECIFIC_VARIABLES
fi

# Application Variables
APP_NAME=node_app
APP_USER=node_app
APP_PATH=/var/www/$APP_NAME
