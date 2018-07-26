#!/bin/sh

# run with 'sh run.sh'

# Load Functions
eval "$(/usr/bin/find "./include" -iname '*.sh' -exec echo . '{};' \;)"

# --------------------------------------------------

# link your installation file to setup.sh in current folder
# linkToDestination ~/Dropbox/__PREFS__/data/setup.sh ./setup.sh

# now run the setup
. ./setup.sh


