# generate key
# ssh-keygen -t rsa -b 4096 -C "sh@signalwerk.ch"


#if [ -f '~/.ssh/id_rsa' ]; then
#
#  # start the ssh-agent
#  eval "$(ssh-agent -s)"
#
#  # automatically load keys into the ssh-agent and store passphrases in your keychain
#  cat > ~/.ssh/config << EOL
#  Host *
#    AddKeysToAgent yes
#    UseKeychain yes
#    IdentityFile ~/.ssh/id_rsa
#EOL
#
#  # Add SSH private key to the ssh-agent and store passphrase in the keychain.
#  ssh-add -K ~/.ssh/id_rsa
#
#  # copy pub to clipboard
#  pbcopy < ~/.ssh/id_rsa.pub
#
#  open 'https://github.com/settings/keys'
#
#else
#  echo 'SSH not installed!'
#fi
