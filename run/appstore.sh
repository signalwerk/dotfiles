echo 'Apple Store CLI - Waiting for brew …'
while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done


# Apple Store CLI
if [ ! -f ~/.dotfiles/.mas--installed ]; then
  brew install mas
  touch ~/.dotfiles/.mas--installed
fi


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

mas_install 1179623856 'Pastebot'
# mas_install 890031187 'Marked 2'
mas_install 497270775 'Screenshot Helper'
mas_install 407963104 'Pixelmator'
mas_install 586001240 'SQLPro for SQLite'
mas_install 692867256 'Simplenote'
mas_install 803453959 'Slack'
mas_install 668208984 'GIPHY Capture'
mas_install 511230166 'Justnotes'
mas_install 409203825 'Numbers'
mas_install 537211143 'PhotoBulk'
mas_install 1292198261 'HEIC Converter'
mas_install 1518036000 'Sequel Ace' # SQL client
mas_install 585829637 'Todoist'
mas_install 1518425043 'Boop'
mas_install 497799835 'Xcode'
mas_install 462054704 'Microsoft Word'
mas_install 462058435 'Microsoft Excel'
mas_install 462062816 'Microsoft PowerPoint'
mas_install 1481853033 'Strongbox'
mas_install 1475387142 'Tailscale'
#mas_install 412448059 'ForkLift - File Manager and FTP/SFTP/WebDAV/Amazon S3 client'
#mas_install 726099620 'Bee - Issue Tracking made Native'
#mas_install 824171161 'Affinity Designer'
#mas_install 848311469 'Write - Best Note Taking App'
#mas_install 568494494 'Pocket'
#mas_install 520774149 'String Replacer'


echo "accept xcode license:"
sudo xcodebuild -license accept

# to signal when the docker-tool can run
touch ~/.dotfiles/.appstore--installed
