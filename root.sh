#!/bin/sh

# install dotfiles
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/git.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/dotfiles.sh"'

# run all parts of the setup
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/brew.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/docker.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/node.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/appstore.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/cyberduck.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/atom.sh"'

# can be run withouth the scripts above
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/mac.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/mail.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/finder.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/shortcuts.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/computername.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/ssh.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/python.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/dock.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/sidebar.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/CODE/dotfiles/run/toolbar.sh"'

rm -rf ~/CODE/dotfiles/
