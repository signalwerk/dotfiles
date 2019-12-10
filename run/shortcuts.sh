
## NOT WORKING!!!!
# Change "Move focus to next window" shortcut to ⌘<
# /usr/libexec/PlistBuddy -c "Set :AppleSymbolicHotKeys:51:value:parameters:0 60" ~/Library/Preferences/com.apple.symbolichotkeys.plist
# /usr/libexec/PlistBuddy -c "Print :AppleSymbolicHotKeys:51:value:parameters:0" ~/Library/Preferences/com.apple.symbolichotkeys.plist

# Change shortcut for "Cycle through windows"
# defaults write NSGlobalDomain NSUserKeyEquivalents -dict-add "Cycle Through Windows" "@\U201C"
# defaults read NSGlobalDomain NSUserKeyEquivalents -dict-add "Cycle Through Windows" "@\U201C"


# for app in "cfprefsd" "Dashboard" "Dock" "Finder" "SystemUIServer";
# do
# 	killall "$app" > /dev/null 2>&1
# done
