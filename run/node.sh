## add nvm to bash_profile

echo 'node - Waiting for nvm …'
while [ ! -f ~/.dotfiles/.nvm--installed ]; do sleep 1; done



echo 'export NVM_DIR="$HOME/.nvm"' >>~/.bash_profile
echo '. "$(brew --prefix nvm)/nvm.sh"' >>~/.bash_profile

# reload bash profile
source ~/.bash_profile

# nvm install 0.12
# nvm install 8
nvm install 10
nvm install 12
nvm alias default 12

npm completion >> ~/.bash_profile

# reload bash profile
source ~/.bash_profile

# install yarn
brew install yarn
