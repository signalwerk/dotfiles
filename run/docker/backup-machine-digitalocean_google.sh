
# current path
BASEDIR=$(dirname "$0")

# Load Functions
eval "$(/usr/bin/find "../../include" -iname '*.sh' -exec echo . '{};' \;)"

# get dropbox root
DROPBOX_ROOT="$(getDropboxDir)"

# backup dir
BACKUP_DIR="${DROPBOX_ROOT}/__PREFS__/docker/backups/machines/"
mkdir -p $BACKUP_DIR
echo "Backup path: $BACKUP_DIR"


DOCKER_MACHINE_DIGITALOCEAN=`docker-machine ls | egrep -i "digitalocean|google" | awk '{ print $1}'`


for CURRENT_MACHINE in $DOCKER_MACHINE_DIGITALOCEAN; do
  echo "  Export: $CURRENT_MACHINE";
  sh "${BASEDIR}/lib/machine-export.sh" $CURRENT_MACHINE

  if [ -f "$CURRENT_MACHINE.zip" ]
  then
    rm -f "$BACKUP_DIR$CURRENT_MACHINE.zip"
    mv "$CURRENT_MACHINE.zip" $BACKUP_DIR
  else
  	echo "!!! WARNING !!! $CURRENT_MACHINE was not exportet!"
  fi

done;
