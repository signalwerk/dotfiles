# Dock

if [ ! -f ~/.dotfiles/.appstore--installed ]; then
  echo 'dock - Waiting for Apple Store to finish …'
  while [ ! -f ~/.dotfiles/.appstore--installed ]; do sleep 1; done
fi

if [ ! -f ~/.dotfiles/.dockutil--installed ]; then
  echo 'dock - Waiting for dockutil …'
  while [ ! -f ~/.dotfiles/.dockutil--installed ]; do sleep 1; done
fi

if [ ! -f ~/.dotfiles/.brew-apps--installed ]; then
  echo 'dock - Waiting for brew …'
  while [ ! -f ~/.dotfiles/.brew-apps--installed ]; do sleep 1; done
fi


echo 'Setting Icons in Dock …'

add_to_dock() {

  local name
  local path
  local position

  local OPTIND
  while getopts ":p:n:" o; do
    case "${o}" in
      p) path="${OPTARG}";;
      n) name="${OPTARG}";;
    esac
  done
  shift $((OPTIND-1))

  if [ "${name}" == "" ]; then
    name="$(/usr/bin/basename "${path%.*}")"
  fi

  if [ -z "${after}" ]; then
    position='--position beginning'
  fi

  dockutil --no-restart --remove "${name}" &>/dev/null

  if [ -d "${path}" ]; then
    echo "    Add: ${name}"
    dockutil --no-restart \
      --add "${path}" \
      --label "${name}" --replacing "${name}" \
      --after "${after}" ${position}

    after="${name}"
  fi

}


remove_from_dock() {

  local name

  local OPTIND
  while getopts ":n:" o; do
    case "${o}" in
      n) name="${OPTARG}";;
    esac
  done
  shift $((OPTIND-1))

  echo "    Remove: ${name}"
  dockutil --no-restart \
    --remove "${name}" \
  &>/dev/null


}

add_to_dock                                       -p '/Applications/Utilities/Terminal.app'

add_to_dock      -n "FontExplorer"                -p '/Applications/FontExplorer X Pro.app'


add_to_dock     -n "InDesign"          -p "/Applications/Adobe InDesign 2020/Adobe InDesign 2020.app"
add_to_dock     -n "Photoshop"         -p "/Applications/Adobe Photoshop 2020/Adobe Photoshop 2020.app"
add_to_dock     -n "Illustrator"       -p "/Applications/Adobe Illustrator 2020/Adobe Illustrator.app"
add_to_dock     -n "Acrobat"           -p "/Applications/Adobe Acrobat DC/Adobe Acrobat.app"


add_to_dock                   -n 'Chrome'         -p '/Applications/Google Chrome.app'
add_to_dock                                       -p '/Applications/Firefox.app'
add_to_dock                                       -p '/Applications/Safari.app'





add_to_dock                                       -p '/Applications/Mail.app'

add_to_dock                   -n '1Password'      -p '/Applications/1Password 7.app'

add_to_dock                   -n 'VSCode'         -p '/Applications/Visual Studio Code.app'
add_to_dock                                       -p '/Applications/BBEdit.app'
add_to_dock                                       -p '/Applications/TextEdit.app'
#add_to_dock                                       -p '/Applications/String Replacer.app'
#add_to_dock                                       -p '/Applications/Write.app'
add_to_dock                                       -p '/Applications/Simplenote.app'
#add_to_dock                                       -p '/Applications/Pocket.app'



add_to_dock                                       -p '/Applications/Tower.app'
add_to_dock                                       -p '/Applications/SourceTree.app'
#add_to_dock                                       -p '/Applications/Paw.app'
add_to_dock                                       -p '/Applications/Sequel Ace.app'
add_to_dock                                       -p '/Applications/SQLPro for SQLite.app'
add_to_dock                                       -p '/Applications/Spotify.app'


add_to_dock                                       -p '/Applications/ForkLift.app'
add_to_dock                                       -p '/Applications/Cyberduck.app'
add_to_dock                                       -p '/Applications/Cyberduck.app'

add_to_dock                                       -p '/Applications/Skype.app'
add_to_dock                                       -p '/Applications/WhatsApp.app'
add_to_dock                                       -p '/Applications/Slack.app'


add_to_dock                                       -p '/Applications/ImageOptim.app'
add_to_dock       -n 'HEIC Converter'             -p '/Applications/iMazing HEIC Converter.app'
#add_to_dock                                      -p '/Applications/Affinity Designer.app'


add_to_dock                                       -p '/Applications/Arq.app'
add_to_dock                                       -p '/Applications/Transmission.app'
add_to_dock                                       -p '/Applications/VLC.app'
add_to_dock                                       -p '/Applications/Screenshot Helper.app'



# add_to_dock                                       -p '/Applications/VirtualBox.app'

# ----------------------------------------------------------------------------------------

remove_from_dock            -n 'Photos'
remove_from_dock            -n 'iBooks'
remove_from_dock            -n 'Pages'
remove_from_dock            -n 'FaceTime'
remove_from_dock            -n 'Maps'
remove_from_dock            -n 'Reminders'
remove_from_dock            -n 'Numbers'
remove_from_dock            -n 'Keynote'
remove_from_dock            -n 'Launchpad'
remove_from_dock            -n 'Siri'
remove_from_dock            -n 'TV'
remove_from_dock            -n 'Podcasts'
remove_from_dock            -n 'Music'

# ----------------------------------------------------------------------------------------

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Set the icon size of Dock items (in pixel)
defaults write com.apple.dock tilesize -int 36

# set in place by restarting
/usr/bin/killall cfprefsd
/usr/bin/killall Dock
