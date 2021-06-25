# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/npm/npm.plugin.zsh
(( $+commands[npm] )) && {

  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
}