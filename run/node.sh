if [ ! -f ~/.dotfiles/.brew--installed ]; then
  echo 'node - Waiting brew beeing installed …'
  while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done
fi


if [ ! -f ~/.dotfiles/.nvm--installed ]; then
  brew install nvm

  # install yarn
  brew install yarn

  # after in your ~/.zshrc or in .bash_profile if your use bash shell:
  echo 'export NVM_DIR="$HOME/.nvm"' >>~/.zshrc
  echo 'source "$(brew --prefix nvm)/nvm.sh"' >>~/.zshrc

  # reload profile
  source ~/.zshrc

  # auto complete
  # npm completion >> ~/.bashrc
  npm completion >> ~/.zshrc

  # reload bash profile
  source ~/.zshrc

  # globals
  npm install --global prettier

  touch ~/.dotfiles/.nvm-installed
fi

# nvm install 0.12
nvm install 8
nvm install 10
nvm install 12
nvm alias default 12
