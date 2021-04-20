#!/bin/bash

set -x
echo -n "-- Setup management-ui config --"

DIST_FOLDER=${1:-}
if [[ -z "${DIST_FOLDER}" ]]; then
  echo -n "-----> Veuillez spécifier un répertoire i.e. '.' "
  exit 1
fi

CONFIG_FOLDER=gravitee/graviteeio-management-ui/pix-config
CONSTANTS_FILE=constants.json

sed "s#MANAGEMENT_API_URL#${MANAGEMENT_API_URL}#" "${CONFIG_FOLDER}/${CONSTANTS_FILE}" > ${DIST_FOLDER}/${CONSTANTS_FILE}

echo -n "-----> Copying theme image ... "
mv ${CONFIG_FOLDER}/pix-logo-blanc.png ${DIST_FOLDER}/themes/assets/pix-logo.png

echo "done"
