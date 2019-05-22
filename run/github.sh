echo 'github - Waiting brew beeing installed …'
while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done

mkdir -p ~/Desktop/CODE_GIT/
cd ~/Desktop/CODE_GIT/



git clone git@github.com:signalwerk/dotfiles.git
