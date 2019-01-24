#! /bin/bash

# https://gist.github.com/schickling/2c48da462a7def0a577e

if [ -z "$1" ]; then
  echo "Usage: certs-export.sh PATH"
  echo ""
  echo "Exports the certs to a certs.zip file"
  exit 0
fi

IMPORT_PATH=$1

set -e

MACHINE_STORAGE_PATH="${MACHINE_STORAGE_PATH:-"$HOME/.docker/machine"}"
CERT_PATH="$MACHINE_STORAGE_PATH/certs"

mkdir -p "$CERT_PATH"

# create zip
unzip "$IMPORT_PATH" -d "$CERT_PATH" > /dev/null


echo "Imported cert to $CERT_PATH"
