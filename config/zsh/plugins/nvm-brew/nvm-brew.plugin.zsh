# Set NVM_DIR if it isn't already defined
[[ -z "$NVM_DIR" ]] && export NVM_DIR="$HOME/.nvm"

# Try to load nvm only if command not already available
if ! type "nvm" &> /dev/null; then
    # Load nvm if it exists
    # echo 'source "$(brew --prefix nvm)/nvm.sh"' >>~/.zshrc
    [[ -f "/usr/local/opt/nvm/nvm.sh" ]] && source "/usr/local/opt/nvm/nvm.sh"
fi
