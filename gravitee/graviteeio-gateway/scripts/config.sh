#!/bin/bash

INSTALL_DIR="/${HOME}/${GRAVITEE_MODULE}"
CONFIG_DIR=/${HOME}/config

mv ${CONFIG_DIR}/gravitee.yml ${INSTALL_FOLDER}/config/gravitee.yml
mv ${CONFIG_DIR}/logback.xml ${INSTALL_FOLDER}/config/logback.xml
