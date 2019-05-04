task() {
  local _exe="${1}"
  osascript -e "tell app 'Terminal' to do script ${_exe}"
}
