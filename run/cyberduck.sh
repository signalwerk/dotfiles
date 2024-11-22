echo 'cyberduck - Waiting for brew …'
while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done

brew install --cask cyberduck


echo 'cyberduck - Waiting for Dropbox …'
while [ ! -d ~/Dropbox/__PREFS__/Cyberduck/duck ]; do sleep 1; done


if [ ! -f ~/.dotfiles/.brew--cyberduck ]; then
  # delete existing location
  rm -Rf ~/Library/Group\ Containers/G69SCX94XU.duck/Library/Application\ Support/duck

  # sync to new location using symbolic links
  mkdir -p ~/Library/Group\ Containers/G69SCX94XU.duck/Library/Application\ Support
  ln -s ~/Dropbox/__PREFS__/Cyberduck/duck ~/Library/Group\ Containers/G69SCX94XU.duck/Library/Application\ Support

  touch ~/.dotfiles/.brew--cyberduck
fi
