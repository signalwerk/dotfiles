#!/bin/sh

# Get Dotfiles
rm -rf ~/.dotfiles/
mkdir -p  ~/.dotfiles/
cd ~/.dotfiles/
curl --progress-bar --location 'https://github.com/signalwerk/dotfiles/archive/master.tar.gz' | /usr/bin/tar -x --strip-components 1

# Load Functions
eval "$(/usr/bin/find "./include" -iname '*.sh' -exec echo . '{};' \;)"

# run all parts of the setup
task ~/.dotfiles/run/brew.sh
task ~/.dotfiles/run/node.sh

# can start pretty early
task ~/.dotfiles/run/appstore.sh

# can be run withouth the scripts above
task ~/.dotfiles/run/ssh.sh
task ~/.dotfiles/run/mac.sh
task ~/.dotfiles/run/mail.sh
task ~/.dotfiles/run/finder.sh
task ~/.dotfiles/run/python.sh
task ~/.dotfiles/run/git.sh
task ~/.dotfiles/run/github.sh
task ~/.dotfiles/run/atom.sh




. ./run/dock.sh




# --------------------------------------------------

# link your installation file to setup.sh in current folder
# linkToDestination ~/Dropbox/__PREFS__/data/setup.sh ./setup.sh
