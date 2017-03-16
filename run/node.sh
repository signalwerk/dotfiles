

brew install yarn


## add nvm to bash_profile
echo 'export NVM_DIR="$HOME/.nvm"' >>~/.bash_profile
echo '. "$(brew --prefix nvm)/nvm.sh"' >>~/.bash_profile



nvm install 6
nvm install 0.12
nvm alias default 6


npm install -g gulp-cli
