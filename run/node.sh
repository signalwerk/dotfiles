if [ ! -f ~/.dotfiles/.brew--installed ]; then
  echo 'node - Waiting brew beeing installed …'
  while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done
fi


if [ ! -f ~/.dotfiles/.nvm--installed ]; then
  brew install nvm

  echo '# -- nvm - start --' >> "$HOME/.zprofile"
  echo 'export NVM_DIR="$HOME/.nvm"' >> "$HOME/.zprofile"
  echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> "$HOME/.zprofile"
  echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> "$HOME/.zprofile"
  echo '# -- nvm - end --' >> "$HOME/.zprofile"

  # install yarn
  brew install yarn
  
  # globals
  npm install --global prettier
  npm install --global eslint

  touch ~/.dotfiles/.nvm-installed
fi

# nvm install 0.12
nvm install 8
nvm install 10
nvm install 12
nvm alias default 16
