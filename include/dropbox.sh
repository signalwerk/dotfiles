# get the dir of the dropbox main folder
getDropboxDir() {
  /usr/bin/python -c "import json; print(json.load(open('$HOME/.dropbox/info.json'))['personal']['path'])"
}

stopDropbox() {
  /usr/bin/killall Dropbox &>/dev/null
}

startDropbox() {
  /usr/bin/open -gja 'Dropbox'
  /bin/sleep 5
}

# linkToDropbox LocalFolder DropboxFolder
linkFromDropbox() {

  # Also move hidden files.
  shopt -s dotglob

  local local_dir="${1}"
  local dropbox_root="$(getDropboxDir)"

  # does the dropbox folder exists
  if [ -d "${dropbox_root}" ]; then

    # set final dropbox path
    local dropbox_dir="${dropbox_root}/${2}"

    # is the local dir not already a link?
    if [ -L "${local_dir}" ]; then
      echo -b "Folder already linked from Dropbox (${local_dir})"
    else

      if [ -d "${dropbox_dir}" ]; then

        # delete local folder
        if [ -d "${local_dir}" ]; then
        	deleteFolder "${local_dir}"
        fi

        # check if local folder is gone
        if [ ! -d "${local_dir}" ]; then
          echo -g "Linking ${local_dir} from ${dropbox_dir}…"
          linkToDestination "${dropbox_dir}" "${local_dir}"
      	else
          echo -r "Local folder couldn't be deleted (${local_dir})"
        fi
      else
      	echo -r "Folder on Dropbox doesn't exists (${dropbox_dir})"
      fi
    fi
  fi
}
