# globaly ignore .DS_Store

echo 'git - Waiting brew beeing installed …'
while [ ! -f ~/.dotfiles/.brew--installed ]; do sleep 1; done


echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

git config --global user.name "signalwerk"

git config --global user.email sh@signalwerk.ch
