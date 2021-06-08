#!/bin/bash

INSTALL_DIR="/${HOME}/${GRAVITEE_MODULE}"
CONFIG_DIR=/${HOME}/config
CONFIG_FILE="${CONFIG_DIR}/config.json"

cat $CONFIG_FILE | sed "s#MANAGEMENT_API_URL#${MANAGEMENT_API_URL}#" > ${INSTALL_DIR}/assets/config.json
