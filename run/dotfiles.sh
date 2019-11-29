# curl --progress-bar --location 'https://github.com/signalwerk/dotfiles/archive/master.tar.gz' | /usr/bin/tar -x --strip-components 1

# set Dotfiles
mkdir -p  ~/.dotfiles/

if [ ! -d "~/Desktop/CODE_GIT/dotfiles" ]; then
  mkdir -p ~/Desktop/CODE_GIT/
  cd ~/Desktop/CODE_GIT/

  git clone git@github.com:signalwerk/dotfiles.git
fi
