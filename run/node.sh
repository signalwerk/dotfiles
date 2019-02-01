## add nvm to bash_profile
echo 'export NVM_DIR="$HOME/.nvm"' >>~/.bash_profile
echo '. "$(brew --prefix nvm)/nvm.sh"' >>~/.bash_profile

# nvm install 0.12
nvm install 8
nvm install 10
nvm alias default 10

# exclude Node.js because we have nvm
brew install yarn --without-node

# npm install -g gulp-cli
