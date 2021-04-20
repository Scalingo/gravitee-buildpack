#!/bin/bash

echo -n "-- Setup API config --"

DIST_FOLDER=${1:-}
if [[ -z "${DIST_FOLDER}" ]]; then
  echo -n "-----> Veuillez spécifier un répertoire i.e. '.' "
  exit 1
fi

echo -n "-----> Copying buildpack gravitee API configuration ... "
CONFIG_FOLDER=gravitee/graviteeio-rest-api/pix-config

echo -n "-----> Copying buildpack gravitee API configuration ... "
mv ${CONFIG_FOLDER}/gravitee.yml ${DIST_FOLDER}/config/gravitee.yml

echo -n "-----> Copying theme images ... "
mv ${CONFIG_FOLDER}/themes/logo.png ${DIST_FOLDER}/themes/logo.png
mv ${CONFIG_FOLDER}/themes/logo-light.png ${DIST_FOLDER}/themes/logo-light.png
mv ${CONFIG_FOLDER}/templates/images/logo-pix_mail.png ${DIST_FOLDER}/templates/images/logo-pix_mail.png
mv ${CONFIG_FOLDER}/templates/header.html ${DIST_FOLDER}/templates/header.html
echo "done"
