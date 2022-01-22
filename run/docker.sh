if [ ! -f ~/.dotfiles/.brew-apps--installed ]; then
  echo 'dock - Waiting for brew …'
  while [ ! -f ~/.dotfiles/.brew-apps--installed ]; do sleep 1; done
fi

mkdir -p "~/CODE/.docker/machine"

if [ ! -f ~/.dotfiles/.docker-env--installed ]; then
  echo 'export MACHINE_STORAGE_PATH="$HOME/CODE/.docker/machine"' >>~/.zshrc
  touch ~/.dotfiles/.docker-env--installed
fi

# docker
brew install --cask docker
brew install docker-machine
sudo gem install docker-sync

# mkdir -p "$HOME/CODE/.docker/machine"
# echo 'export MACHINE_STORAGE_PATH="$HOME/CODE/.docker/machine"' >> "$HOME/.zprofile"

touch ~/.dotfiles/.docker--installed
