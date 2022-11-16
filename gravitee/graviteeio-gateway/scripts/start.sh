#!/bin/bash

echo "-----> Configuring gravitee APIM gateway"
"${HOME}/scripts/config.rb"

echo "-----> Starting gravitee APIM gateway"
exec bash "${HOME}/graviteeio-apim-gateway/bin/gravitee"
