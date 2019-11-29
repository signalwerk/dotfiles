echo 'atom - Waiting for brew …'
while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done

brew cask install atom

# install plugins
echo "Atom Packages install"
apm install Sublime-Style-Column-Selection
apm install highlight-line
apm install highlight-selected
apm install lint
apm install linter
apm install linter-eslint
apm install minimap
apm install prettier-atom
apm install react
apm install language-vuejs
apm install php-twig
apm install git-blame
apm install atom-beautify
apm install fast-eslint
apm install intentions
apm install linter-ui-default

# apm install pigments
# apm install shell-it
