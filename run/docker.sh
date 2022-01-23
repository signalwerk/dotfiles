if [ ! -f ~/.dotfiles/.brew-apps--installed ]; then
  echo 'dock - Waiting for brew …'
  while [ ! -f ~/.dotfiles/.brew-apps--installed ]; do sleep 1; done
fi

mkdir -p "~/CODE/.docker/machine"

if [ ! -f ~/.dotfiles/.docker-env--installed ]; then
  echo 'export MACHINE_STORAGE_PATH="$HOME/CODE/.docker/machine"' >>~/.zprofile
  touch ~/.dotfiles/.docker-env--installed
fi

# docker
brew install --cask docker
brew install docker-machine
sudo gem install docker-sync


touch ~/.dotfiles/.docker--installed
