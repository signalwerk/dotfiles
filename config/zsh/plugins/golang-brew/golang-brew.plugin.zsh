# Set GOPATH if it isn't already defined
[[ -z "$GOPATH" ]] && export GOPATH="${HOME}/.go"


# Set GOROOT if it isn't already defined
[[ -z "$GOROOT" ]] && export GOROOT="$(brew --prefix golang)/libexec"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# Try to load go only if command not already available
if ! type "go" &> /dev/null; then
  export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
fi
