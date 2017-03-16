if type dockutil &>/dev/null; then
  echo 'Setup Apple Store programs …'

  mas_install() {

    local id="${1}"
    local name="${2}"

    if ! mas list | grep --quiet "${id}"; then
      echo "    Installing ${name} …"
      mas install "${id}"
    else
      echo "    ${name} is already installed."
    fi

  }


  # echo -b 'Updating App Store Applications …'
  # mas upgrade

  mas_install 890031187 'Marked 2'
  mas_install 497799835 'Xcode'
  mas_install 497270775 'Screenshot Helper'
  mas_install 407963104 'Pixelmator'
  mas_install 586001240 'SQLPro for SQLite - database and coredata manager'
  mas_install 692867256 'Simplenote'
  mas_install 726099620 'Bee - Issue Tracking made Native'
  mas_install 824171161 'Affinity Designer'
  mas_install 803453959 'Slack'
  mas_install 668208984 'GIPHY Capture. The GIF Maker'
  mas_install 1179623856 'Pastebot'
  mas_install 520774149 'String Replacer'
  mas_install 412448059 'ForkLift - File Manager and FTP/SFTP/WebDAV/Amazon S3 client'
  mas_install 568494494 'Pocket'
  mas_install 848311469 'Write - Best Note Taking App'
  mas_install 1179623856 'Pastebot'

else
  echo 'ERROR! mas not installed'

fi
