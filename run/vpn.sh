

# vpn
if [ ! -f ~/.dotfiles/.brew--tunnelblick ]; then
  brew install --cask tunnelblick
  touch ~/.dotfiles/.brew--tunnelblick
fi

if [ ! -f ~/.dotfiles/.vpn--configured ]; then
  echo "Install profile"
  osascript -e 'quit app "Tunnelblick"'
  open -a /Applications/Tunnelblick.app --args ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_de_066F2.ovpn ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_dk_066F2.ovpn ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_ca-vn_066F2.ovpn 
  touch ~/.dotfiles/.vpn--configured
fi
