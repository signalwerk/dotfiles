
# current path
BASEDIR=$(dirname "$0")

# Load Functions
eval "$(/usr/bin/find "../../include" -iname '*.sh' -exec echo . '{};' \;)"

# get dropbox root
DROPBOX_ROOT="$(getDropboxDir)"

# backup dir
BACKUP_DIR="${DROPBOX_ROOT}/__PREFS__/docker/backups/certs/"
mkdir -p $BACKUP_DIR

sh "${BASEDIR}/lib/certs-export.sh" "${BACKUP_DIR}"
