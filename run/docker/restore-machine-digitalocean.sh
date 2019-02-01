
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


BACKUP_PATTERN="${BACKUP_DIR}/*.zip"

for CURRENT_MACHINE in $BACKUP_PATTERN
do
  echo "restore $CURRENT_MACHINE"
  sh "${BASEDIR}/lib/machine-import.sh" $CURRENT_MACHINE
done
