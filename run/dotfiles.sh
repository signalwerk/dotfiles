# set Dotfiles
mkdir -p  ~/.dotfiles/

if [ ! -d "~/CODE/dotfiles" ]; then
  mkdir -p ~/CODE/
  cd ~/CODE/

  git clone git@github.com:signalwerk/dotfiles.git
fi
