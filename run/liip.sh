if [ ! -f ~/.dotfiles/.brew--installed ]; then
  echo 'liip - Waiting for brew to finish …'
  while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done
fi

brew install --cask postbox
brew install discord

# heroku
brew tap heroku/brew
brew install heroku

# cloudfoundry.org
brew tap cloudfoundry/tap
brew install cf-cli
brew install --cask lando

if [ ! -f ~/.dotfiles/.vpn--liip-configured ]; then

  if [ ! -f ~/.dotfiles/.tunnelblick--installed ]; then
    echo 'liip - Waiting for tunnelblick to finish …'
    while [ ! -f ~/.dotfiles/.tunnelblick--installed ]; do sleep 1; done
  fi

  open -a /Applications/Tunnelblick.app --args  ~/Dropbox/____INSTALL/VPN/Liip/f133.pfsense-udp-1194-liip_zh_openvpn_ldap_generic-config/f133.pfsense-udp-1194-liip_zh_openvpn_ldap_generic.ovpn 
  touch ~/.dotfiles/.vpn--liip-configured
fi




