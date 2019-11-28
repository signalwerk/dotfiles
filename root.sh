#!/bin/sh

# Get Dotfiles
rm -rf ~/.dotfiles/
mkdir -p  ~/.dotfiles/
cd ~/.dotfiles/
curl --progress-bar --location 'https://github.com/signalwerk/dotfiles/archive/master.tar.gz' | /usr/bin/tar -x --strip-components 1

# Load Functions
# eval "$(/usr/bin/find "./include" -iname '*.sh' -exec echo . '{};' \;)"

# From Bash to Zsh
chsh -s /bin/zsh

# run all parts of the setup
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/brew.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/node.sh"'

# can start pretty early
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/appstore.sh"'

# can be run withouth the scripts above
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/mac.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/mail.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/finder.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/ssh.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/python.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/git.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/github.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/atom.sh"'
osascript -e 'tell app "Terminal" to do script "zsh ~/.dotfiles/run/dock.sh"'
