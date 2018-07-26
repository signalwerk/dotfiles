deleteFolder() {
  local _dir="${1}"
  /bin/rm -fr "${_dir}" &>/dev/null
}
deleteFs() {
  local _dir="${1}"
  /bin/rm -fr "${_dir}" &>/dev/null
}

linkToDestination() {
  /bin/ln -sfn "${1}" "${2}"  || echo -r "Error linking ${1} to ${2}."
}
