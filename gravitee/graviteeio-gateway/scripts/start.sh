#!/bin/bash

echo "-----> Configuring gravitee gateway"
"${HOME}/scripts/config.rb"

echo "-----> Starting gravitee gateway"
exec bash "${HOME}/graviteeio-gateway/bin/gravitee"
