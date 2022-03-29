# in this folder we save the progress of the installation
mkdir -p  ~/.dotfiles/	

# install brew
if [ ! -f ~/.dotfiles/.brew--installed ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/signalwerk/.zprofile
  eval $(/opt/homebrew/bin/brew shellenv)

  touch ~/.dotfiles/.brew--installed
fi

brew install 1password
brew install --cask 1password-cli
echo "ℹ️ 1password is ready to login/use"

brew install --cask dropbox
echo "ℹ️ dropbox is ready to login/use"

brew install --cask google-chrome

brew install --cask visual-studio-code
touch ~/.dotfiles/.visual-studio-code--installed

# command line tool for managing dock items
brew install dockutil
touch ~/.dotfiles/.dockutil--installed

brew install --cask tower
brew install --cask arq

brew install --cask google-drive
brew install --cask firefox
brew install --cask whatsapp
brew install --cask bbedit
brew install --cask skype

brew install --cask sourcetree
brew install --cask vlc
brew install --cask transmission
brew install --cask simplenote
brew install --cask monodraw
brew install --cask Kaleidoscope
brew install --cask alfred
brew install --cask fontexplorer-x-pro
brew install --cask imageoptim
brew install --cask figma
brew install --cask microsoft-teams

brew install --cask sketch
brew install --cask microsoft-office
brew install --cask teamviewer
brew install --cask zoom

brew install --cask graphiql
brew install --cask gitup

# right click symbolic link
brew install --cask symboliclinker
brew install --cask spotify


brew install --cask discord
brew install telegram
brew install --cask signal


# inkscape needs xquartz
# brew install --cask xquartz
# brew install --cask inkscape


# Python env
brew install pyenv
pyenv versions # List Python versions
# pyenv install 3.6.12
# pyenv local 3.6.12

brew install jq
brew install wget
brew install imapfilter
brew install pandoc
brew install fonttools
brew install rename
brew install rhash

brew install lftp
brew install ffmpeg
brew install imagemagick
brew install ghostscript
brew install woff2


# rotate jpg
# brew install jhead

# optimize png
brew install optipng

# spam
brew install bogofilter



# others
brew install --cask postman

# jest-watch helper (fsevent)
brew install watchman

# brew install --cask mongohub
# brew install --cask paw
# brew install --cask java
brew install go

# brew install --cask ngrok
# brew install --cask google-cloud-sdk

# QR-Code
# brew install qrencode

# custom status-bar
brew install swiftbar
defaults write com.ameba.Swiftbar PluginDirectory /Users/signalwerk/Dropbox/__PREFS__/SwiftBar


# finder integration of quickrunners
brew install --cask openinterminal-lite
brew install --cask openineditor-lite


brew install --cask adobe-creative-cloud

brew install --cask resilio-sync

brew install cloudflare-wrangler

# to signal when the docker-tool can run
touch ~/.dotfiles/.brew-apps--installed
