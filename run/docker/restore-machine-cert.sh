
# current path
BASEDIR=$(dirname "$0")

# Load Functions
eval "$(/usr/bin/find "../../include" -iname '*.sh' -exec echo . '{};' \;)"

# get dropbox root
DROPBOX_ROOT="$(getDropboxDir)"

# backup dir
BACKUP_DIR="${DROPBOX_ROOT}/__PREFS__/docker/backups/certs/"


sh "${BASEDIR}/lib/certs-import.sh" "${BACKUP_DIR}/cert.zip"
