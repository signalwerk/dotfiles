# set Dotfiles
mkdir -p  ~/.dotfiles/

if [ ! -d "~/CODE/dotfiles" ]; then
  mkdir -p ~/CODE/
  cd ~/CODE/

  # git clone git@github.com:signalwerk/dotfiles.git
  curl --progress-bar --location 'https://github.com/signalwerk/dotfiles/archive/master.tar.gz' | /usr/bin/tar -x --strip-components 1
fi
