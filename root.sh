#!/bin/sh

# Get Dotfiles
rm -rf ~/.dotfiles/
mkdir -p  ~/.dotfiles/
cd ~/.dotfiles/
curl --progress-bar --location 'https://github.com/signalwerk/dotfiles/archive/master.tar.gz' | /usr/bin/tar -x --strip-components 1


# run all parts of the setup
. ./run/brew.sh
. ./run/node.sh

# can start pretty early
. ./run/appstore.sh

# can be run withouth the scripts above
. ./run/ssh.sh
. ./run/mac.sh
. ./run/mail.sh
. ./run/finder.sh
. ./run/python.sh
. ./run/git.sh
. ./run/github.sh
. ./run/atom.sh





. ./run/dock.sh




# --------------------------------------------------

# link your installation file to setup.sh in current folder
# linkToDestination ~/Dropbox/__PREFS__/data/setup.sh ./setup.sh
