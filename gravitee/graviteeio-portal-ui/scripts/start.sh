#!/bin/bash

echo "-----> Configuring gravitee portal UI"
"${HOME}/scripts/config.sh"

echo "-----> Starting gravitee portal UI"
exec bash "${HOME}/bin/run"
