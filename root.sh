#!/bin/sh

# install dotfiles
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/git.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/dotfiles.sh"'

# run all parts of the setup
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/brew.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/node.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/appstore.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/cyberduck.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/atom.sh"'

# can be run withouth the scripts above
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/mac.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/mail.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/finder.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/ssh.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/python.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/dock.sh"'
osascript -e 'tell app "Terminal" to do script "sh ~/Desktop/CODE_GIT/dotfiles/run/sidebar.sh"'

rm -rf ~/Desktop/CODE_GIT/dotfiles/
