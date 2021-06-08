#!/bin/bash

echo "-----> Configuring gravitee gateway"
"${HOME}/scripts/config.sh"

echo "-----> Starting gravitee gateway"
exec bash "${HOME}/graviteeio-gateway/bin/gravitee"
