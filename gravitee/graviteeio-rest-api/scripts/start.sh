#!/bin/bash

echo "-----> Configuring gravitee REST API"
"${HOME}/scripts/config.rb"

echo "-----> Starting gravitee REST API…"
exec bash graviteeio-rest-api/bin/gravitee
