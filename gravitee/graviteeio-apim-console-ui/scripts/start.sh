#!/bin/bash

echo "-----> Configuring gravitee management UI"
"${HOME}/scripts/config.sh"

echo "-----> Starting gravitee management UI"
exec bash "${HOME}/bin/run"
