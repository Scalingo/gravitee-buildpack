#!/bin/bash

echo -n "-- Setup portal-ui config --"

DIST_FOLDER=${1:-}
if [[ -z "${DIST_FOLDER}" ]]; then
  echo -n "-----> Veuillez spécifier un répertoire i.e. '.' "
  exit 1
fi

echo -n "-----> Copying buildpack gravitee portal ui configuration ... "
CONFIG_FILE=gravitee/graviteeio-portal-ui/pix-config/config.json

cat $CONFIG_FILE | sed "s#MANAGEMENT_API_URL#${MANAGEMENT_API_URL}#" > ${DIST_FOLDER}/assets/config.json

echo "done"
