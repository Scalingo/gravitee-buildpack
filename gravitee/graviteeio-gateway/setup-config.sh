#!/bin/bash

echo -n "-- Setup portal-ui config --"

DIST_FOLDER=${1:-}
if [[ -z "${DIST_FOLDER}" ]]; then
  echo -n "-----> Veuillez spécifier un répertoire i.e. '.' "
  exit 1
fi

echo -n "-----> Copying buildpack gravitee gateway configuration ... "
CONFIG_FILE=gravitee/graviteeio-gateway/pix-config

mv ${CONFIG_FILE}/gravitee.yml ${DIST_FOLDER}/config/gravitee.yml
mv ${CONFIG_FILE}/logback.xml ${DIST_FOLDER}/config/logback.xml
echo "done"
