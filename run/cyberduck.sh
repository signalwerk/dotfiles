echo 'cyberduck - Waiting for brew …'
while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done

brew cask install cyberduck


echo 'cyberduck - Waiting for Dropbox …'
while [ ! -d ~/Dropbox/Apps/Cyberduck/duck ]; do sleep 1; done



if [ ! -f ~/.dotfiles/.brew--cyberduck ]; then
  # Delete existing bookmark location
  rm -R ~/Library/Group\ Containers/G69SCX94XU.duck/Library/Application\ Support/duck

  # Dropbox sync to new location using symbolic links
  ln -s ~/Dropbox/Apps/Cyberduck/duck ~/Library/Group\ Containers/G69SCX94XU.duck/Library/Application\ Support

  touch ~/.dotfiles/.brew--cyberduck
fi
