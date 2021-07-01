
# install brew
if [ ! -f ~/.dotfiles/.brew--installed ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/signalwerk/.zprofile
  eval $(/opt/homebrew/bin/brew shellenv)

  touch ~/.dotfiles/.brew--installed
fi

brew install 1password

brew install --cask visual-studio-code
touch ~/.dotfiles/.visual-studio-code--installed

brew install --cask google-chrome

# Apple Store CLI
brew install mas
touch ~/.dotfiles/.mas--installed

# command line tool for managing dock items
brew install dockutil
touch ~/.dotfiles/.dockutil--installed

brew install --cask tower

brew install --cask dropbox
brew install --cask arq


brew install --cask google-backup-and-sync
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
brew install --cask ksdiff # commandline-tool for kaleidoscope
brew install --cask alfred
brew install --cask fontexplorer-x-pro
brew install --cask imageoptim
brew install --cask figma
brew install --cask microsoft-teams

brew install --cask sketch
brew install --cask microsoft-office
brew install --cask teamviewer
brew install --cask zoom

# right click symbolic link
brew install --cask symboliclinker
brew install --cask spotify

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
brew install ffmpeg --with-libass --with-openssl --with-libvorbis --with-libvpx --with-theora
brew install imagemagick
brew install ghostscript

# rotate jpg
# brew install jhead

# spam
brew install bogofilter

# vpn
brew install --cask tunnelblick
touch ~/.dotfiles/.tunnelblick--installed

if [ ! -f ~/.dotfiles/.vpn--configured ]; then
  open -a /Applications/Tunnelblick.app --args ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_de_066F2.ovpn  ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_dk_066F2.ovpn  ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_ca-vn_066F2.ovpn 
  touch ~/.dotfiles/.vpn--configured
fi


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


# finder integration of quickrunners
brew install --cask openinterminal-lite
brew install --cask openineditor-lite




brew install --cask adobe-creative-cloud

brew install --cask resilio-sync

brew install cloudflare-wrangler

# set env
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> "$HOME/.zprofile"
eval $(/opt/homebrew/bin/brew shellenv)


# to signal when the docker-tool can run
touch ~/.dotfiles/.brew-apps--installed
