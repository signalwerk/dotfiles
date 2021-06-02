#!/bin/sh

## curl --progress-bar --location 'https://github.com/signalwerk/dotfiles/archive/master.tar.gz' | /usr/bin/tar -x --strip-components 1


# run all parts of the setup
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/zsh-install.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/zsh-config.sh"'

osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/brew.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/docker.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/node.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/appstore.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/cyberduck.sh"'

# can be run withouth the scripts above
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/mac.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/mail.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/finder.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/shortcuts.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/computername.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/python.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/dock.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/sidebar.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/toolbar.sh"'

