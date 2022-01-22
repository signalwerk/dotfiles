echo 'karabiner-elements - Waiting for brew …'
while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done

brew install --cask karabiner-elements

echo 'karabiner-elements - Waiting for Dropbox …'
while [ ! -d ~/Dropbox/__PREFS__/karabiner-elements/karabiner ]; do sleep 1; done


if [ ! -f ~/.dotfiles/.brew--karabiner-elements ]; then
  # delete existing location
  rm -rf ~/.config/karabiner

  # sync to new location using symbolic links
  mkdir -p ~/.config/
  ln -s ~/Dropbox/__PREFS__/karabiner-elements/karabiner ~/.config/

  touch ~/.dotfiles/.brew--karabiner-elements
fi
