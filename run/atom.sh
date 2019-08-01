echo 'atom - Waiting for Atom …'
while [ ! -f ~/.dotfiles/.atom--installed ]; do sleep 1; done

# install plugins
echo "Atom Packages install"
apm install Sublime-Style-Column-Selection
apm install highlight-line
apm install highlight-selected
apm install lint
apm install linter
apm install linter-eslint
apm install minimap
# apm install pigments
apm install prettier-atom
apm install react
apm install shell-it
