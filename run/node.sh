## add nvm to bash_profile
echo 'export NVM_DIR="$HOME/.nvm"' >>~/.bash_profile
echo '. "$(brew --prefix nvm)/nvm.sh"' >>~/.bash_profile

nvm install 0.12
nvm install 6
nvm install 8
nvm alias default 8


# npm install -g gulp-cli
