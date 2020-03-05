
if [ ! -f ~/.dotfiles/.zsh-history--installed ]; then
cat >> ~/.zshrc << EOL

### START ZSH ----------------

# save history-file
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

# add timestamp and elapsed time in history
setopt EXTENDED_HISTORY

# size of session and history file
SAVEHIST=10000
HISTSIZE=50000

# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY

# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY

# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST

# do not store duplications
setopt HIST_IGNORE_DUPS

#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS

# removes blank lines from history
setopt HIST_REDUCE_BLANKS

### END ZSH ----------------

EOL

# reload bash profile
source ~/.zshrc

touch ~/.dotfiles/.zsh-history-installed

fi
