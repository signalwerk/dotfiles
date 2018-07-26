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

# linkToDropbox LocalFileOrFolder DropboxFileOrFolder
linkFromDropbox() {

  # Also move hidden files.
  shopt -s dotglob

  local localPath="${1}"
  local dropbox_root="$(getDropboxDir)"

  # does the dropbox folder exists
  if [ -d "${dropbox_root}" ]; then

    # set final dropbox path
    local dropboxPath="${dropbox_root}/${2}"

    # is the local dir not already a link?
    if [ -L "${localPath}" ]; then
      echo -b "Input already linked from Dropbox (${localPath})"
    else

      if [ -d "${dropboxPath}" ]; then

        # delete local folder
        if [ -d "${localPath}" ]; then
        	deleteFs "${localPath}"
        fi

        # check if local folder is gone
        if [ ! -d "${localPath}" ]; then
          echo -g "Linking ${localPath} from ${dropboxPath}…"
          linkToDestination "${dropboxPath}" "${localPath}"
      	else
          echo -r "Local folder couldn't be deleted (${localPath})"
        fi
      else
        if [ -f "${dropboxPath}" ]; then

          # delete local file
          if [ -f "${localPath}" ]; then
          	deleteFs "${localPath}"
          fi

          # check if local file is gone
          if [ ! -f "${localPath}" ]; then
            echo -g "Linking ${localPath} from ${dropboxPath}…"
            linkToDestination "${dropboxPath}" "${localPath}"
        	else
            echo -r "Local file couldn't be deleted (${localPath})"
          fi
        else
      	  echo -r "Link destination on Dropbox doesn't exists (${dropboxPath})"
        fi
      fi
    fi
  else
    echo -r "Dropbox Folder doesn't exists (${dropbox_root})"
  fi
}
