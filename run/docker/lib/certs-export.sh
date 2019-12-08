#! /bin/bash

# https://gist.github.com/schickling/2c48da462a7def0a577e

if [ -z "$1" ]; then
  echo "Usage: certs-export.sh PATH"
  echo ""
  echo "Exports the certs to a certs.zip file"
  exit 0
fi

CERT_PATH=$1

set -e

MACHINE_STORAGE_PATH="${MACHINE_STORAGE_PATH:-"$HOME/CODE/.docker/machine"}"
machine_path="$MACHINE_STORAGE_PATH/certs"


# create zip
mkdir -p "$CERT_PATH"
rm -f "$CERT_PATH/cert.zip"
zip -rj "$CERT_PATH/cert.zip" "$machine_path" > /dev/null

echo "Exported cert to $CERT_PATH/cert.zip"
