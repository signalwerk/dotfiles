if [ ! -f ~/.dotfiles/.brew--installed ]; then
  echo 'node - Waiting brew beeing installed …'
  while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done
fi


if [ ! -f ~/.dotfiles/.nvm--installed ]; then
  brew install nvm

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
nvm alias default 12
