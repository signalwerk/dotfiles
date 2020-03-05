
if [ ! -d ~/.oh-my-zsh ]; then
  echo 'zsh config - Waiting for zsh …'
  while [ ! -d ~/.oh-my-zsh ]; do sleep 1; done
fi

sleep 10

if [ ! -f ~/.zshrc ]; then
  echo 'zsh config - Waiting for .zshrc …'
  while [ ! -f ~/.zshrc ]; do sleep 1; done
fi


if [ ! -f ~/.dotfiles/.zsh--installed ]; then


  # set ZSH_CUSTOM=$HOME/CODE/dotfiles/config/zsh
  sed -i "" "s/^\# ZSH_CUSTOM=.*/ZSH_CUSTOM=\$HOME\/CODE\/dotfiles\/config\/zsh/g" $HOME/.zshrc

  # set plugins
  sed -i "" "s/^plugins=(\(.*\))/plugins=(\1 npm nvm-brew docker-machine golang-brew keychain-ssh)/g" $HOME/.zshrc



  touch ~/.dotfiles/.zsh--installed
fi



  # Control will enter here if $DIRECTORY exists.
