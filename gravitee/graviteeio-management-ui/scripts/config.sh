#!/bin/bash

INSTALL_DIR="${HOME}/${GRAVITEE_MODULE}"
CONFIG_DIR=${HOME}/config

CONSTANTS_FILE=constants.json

sed "s#MANAGEMENT_API_URL#${MANAGEMENT_API_URL}#" "${CONFIG_DIR}/${CONSTANTS_FILE}" > ${INSTALL_DIR}/${CONSTANTS_FILE}

if [ -d "$CONFIG_DIR/themes" ] ; then
  echo "-----> Copying theme assets…"
  cp -r "${CONFIG_DIR}/themes/*" "${INSTALL_DIR}/themes"
fi

