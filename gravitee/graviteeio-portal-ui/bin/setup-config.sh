#!/bin/bash
set -x
echo -n "-- Setup portal-ui config --"

FOLDER=${1:-}
if [[ -z "${FOLDER}" ]]; then
  echo -n "-----> Veuillez spécifier un répertoire i.e. '.' "
  exit 1
fi

if [[ -z "${APIM_ENV}" ]]; then
echo -n "-----> Veuillez saisir l'environnement Gravitee à configurer en définissant la variable d'env APIM_ENV ..."
exit 1
fi

echo -n "-----> Copying buildpack gravitee portal ui configuration ... "
ls -ail ..
echo "---"
ls -ail .
mv gravitee/graviteeio-portal-ui/pix-config/${APIM_ENV}/config.json ${FOLDER}/assets/config.json
echo "done"
