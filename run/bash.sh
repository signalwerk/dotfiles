# create pfh to prettier fusion files
mkdir -p $HOME/Dropbox/Apps/Bash/bin
touch $HOME/Dropbox/Apps/Bash/bin/prettier-fusion-html.sh
chmod +x $HOME/Dropbox/Apps/Bash/bin/prettier-fusion-html.sh
ln -s $HOME/Dropbox/Apps/Bash/bin/prettier-fusion-html.sh $HOME/Dropbox/Apps/Bash/bin/pfh
echo "sed -e 's/:/---semicolon---/' | prettier --stdin-filepath foo.html | sed -e 's/---semicolon---/:/'" > $HOME/Dropbox/Apps/Bash/bin/prettier-fusion-html.sh
echo 'PATH=$PATH:$HOME/Dropbox/Apps/Bash/bin/' >>~/.bash_profile
