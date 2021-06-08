#!/bin/bash

INSTALL_DIR="/${HOME}/${GRAVITEE_MODULE}"
CONFIG_DIR="/${HOME}/config"

mv "${CONFIG_DIR}/gravitee.yml" "${INSTALL_DIR}/config/gravitee.yml"

if [ -d "${CONFIG_DIR}/themes" ] ; then
  echo -n "-----> Copying themes…"
  cp ${CONFIG_DIR}/themes/* "${INSTALL_DIR}/themes"
fi

if [ -d "${CONFIG_DIR}/templates" ] ; then
  echo -n "-----> Copying templates…"
  cp -r ${CONFIG_DIR}/templates/* "${INSTALL_DIR}/templates"
fi
