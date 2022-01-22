



# vpn
brew install --cask tunnelblick
touch ~/.dotfiles/.tunnelblick--installed

if [ ! -f ~/.dotfiles/.vpn--configured ]; then
  open -a /Applications/Tunnelblick.app --args ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_de_066F2.ovpn  ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_dk_066F2.ovpn  ~/Dropbox/____INSTALL/VPN/VPN-Unlimited/sh@signalwerk.ch_066F2/sh@signalwerk.ch_ca-vn_066F2.ovpn 
  touch ~/.dotfiles/.vpn--configured
fi
