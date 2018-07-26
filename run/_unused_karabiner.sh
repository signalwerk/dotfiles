

# --------------------------------------------------
# Karabiner Keyboard mapping
# --------------------------------------------------
# to generate karabiner import
# /Applications/Karabiner.app/Contents/Library/bin/karabiner export > ~/Desktop/karabiner-import.sh

brew cask install karabiner

# set preferences comming from dropbox
linkFromDropbox "${applicationSupport}/Karabiner" "${dropboxSettingsRoot}/Karabiner"

# activate Options
karabiner=/Applications/Karabiner.app/Contents/Library/bin/karabiner
$karabiner set private.openAtomHere 1
$karabiner set private.openTerminalHere 1
$karabiner set private.remapInsertCopiedCells 1
$karabiner set private.switchOnMagicKeyboardToUsLayout 1
$karabiner set private.switchOnOtherKeyboardToSwissLayout 1
$karabiner set private.moveFocusToNextWindow 1
