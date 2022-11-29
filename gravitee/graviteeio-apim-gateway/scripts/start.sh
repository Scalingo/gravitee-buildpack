#!/bin/bash

set -e

echo "-----> Configuring gravitee APIM gateway"
"${HOME}/scripts/config.rb"

echo "-----> Starting gravitee APIM gateway"
exec bash "${HOME}/graviteeio-apim-gateway/bin/gravitee"
