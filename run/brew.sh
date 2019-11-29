
# install brew
if [ ! -f ~/.dotfiles/.brew--installed ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  touch ~/.dotfiles/.brew--installed
fi

brew cask install 1password

brew cask install google-chrome

# Apple Store CLI
brew install mas
touch ~/.dotfiles/.mas--installed

brew cask install visual-studio-code
touch ~/.dotfiles/.visual-studio-code--installed

# command line tool for managing dock items
brew install dockutil
touch ~/.dotfiles/.dockutil--installed

brew cask install tower

brew cask install dropbox
brew cask install arq

brew cask install google-backup-and-sync
brew cask install firefox
brew cask install whatsapp
brew cask install bbedit
brew cask install skype


brew cask install sourcetree
brew cask install vlc
brew cask install transmission
brew cask install simplenote
brew cask install monodraw
brew cask install Kaleidoscope
brew cask install alfred
brew cask install fontexplorer-x-pro
brew cask install imageoptim

# docker
brew cask install docker
brew cask install kitematic

brew cask install sketch
brew cask install microsoft-office
brew cask install teamviewer

# right click symbolic link
brew cask install symboliclinker
brew cask install spotify

# inkscape needs xquartz
brew cask install xquartz
brew cask install inkscape

brew install jq
brew install wget
brew install imapfilter
brew install pandoc
brew install fonttools
brew install rename
brew install bat

brew install lftp
brew install ffmpeg --with-libass --with-openssl --with-libvorbis --with-libvpx --with-theora
brew install imagemagick --use-jpeg2000, --use-cms, --use-rsvg, --use-libtiff, --with-fontconfig
brew install ghostscript

# rotate jpg
brew install jhead

# spam
brew install bogofilter

# vpn
brew cask install tunnelblick
# open -a /Applications/Tunnelblick.app --args  path-to-configuration1   path-to-configuration2   path-to-configuration3

# others
brew cask install postman

# brew cask install mongohub
# brew cask install paw
# brew cask install java
# brew cask install transmit
# brew install go
# brew cask install ngrok
# brew cask install google-cloud-sdk

# liip
# ——————————
brew cask install vagrant
brew cask install virtualbox

# heroku
brew tap heroku/brew
brew install heroku

# cloudfoundry.org
brew tap cloudfoundry/tap
brew install cf-cli

brew cask install adobe-creative-cloud


# to signal when the docker-tool can run
touch ~/.dotfiles/.brew-apps--installed
