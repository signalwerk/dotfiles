# in this folder we save the progress of the installation
mkdir -p  ~/.dotfiles/		

# Get code of Dotfiles
if [ ! -d "~/CODE/dotfiles" ]; then
  echo "Get initial Dotfiles"
  mkdir -p ~/CODE/dotfiles
  cd ~/CODE/dotfiles

  # git clone git@github.com:signalwerk/dotfiles.git
  curl --progress-bar --location 'https://github.com/signalwerk/dotfiles/archive/master.tar.gz' | /usr/bin/tar -x --strip-components 1
fi
