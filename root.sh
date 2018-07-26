#!/bin/sh

# run with 'sh root.sh'


dropboxRoot="__PREFS__/data"
dropboxSettingsRoot="${dropboxRoot}/settings"

applicationSupport="${HOME}/Library/Application Support"
preferencesRoot="${HOME}/Library/Preferences"




# Load Functions
eval "$(/usr/bin/find "./include" -iname '*.sh' -exec echo . '{};' \;)"




# run all parts of the setup
. ./run/brew.sh
. ./run/node.sh
. ./run/appstore.sh
. ./run/mac.sh
. ./run/mail.sh
. ./run/dock.sh
##### not longer working . ./run/menubar.sh
. ./run/finder.sh
. ./run/spam.sh
. ./run/python.sh
. ./run/atom.sh
. ./run/git.sh
#### no . ./run/indesign.sh



# --------------------------------------------------

# link your installation file to setup.sh in current folder
# linkToDestination ~/Dropbox/__PREFS__/data/setup.sh ./setup.sh
