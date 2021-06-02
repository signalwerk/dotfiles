PLIST=~/Library/Preferences/com.apple.finder.plist

if [ ! -f ~/.dotfiles/.toolbar--installed ]; then

  APP=/Applications/Utilities/Terminal.app/
  POSITION=1
  /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration Browser:TB Item Plists:$POSITION:_CFURLString' string 'file://$APP'" $PLIST
  /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration Browser:TB Item Plists:$POSITION:_CFURLStringType' integer 15" $PLIST
  /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration Browser:TB Item Identifiers:$POSITION' string 'com.apple.finder.loc '" $PLIST


  # POSITION=2
  # /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration Browser:TB Item Plists:$POSITION:_CFURLString' string 'file://$APP'" $PLIST
  # /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration Browser:TB Item Plists:$POSITION:_CFURLStringType' integer 15" $PLIST
  # /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration Browser:TB Item Identifiers:$POSITION' string 'com.apple.finder.loc '" $PLIST

  killall "Finder" &> /dev/null

  touch ~/.dotfiles/.toolbar-installed

fi




