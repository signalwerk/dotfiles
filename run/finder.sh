# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: Show the ~/Library folder
chflags nohidden ~/Library

# Finder: When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Finder: Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: Set Desktop as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

# Finder: Use column view in all Finder windows by default
# Four-letter codes for the other view modes: 'icnv', 'clmv', 'Flwv', 'Nlsv'
defaults write com.apple.finder FXPreferredViewStyle -string clmv


## NOT WORKING!!!!
# Change "Move focus to next window" shortcut to ⌘<
# /usr/libexec/PlistBuddy -c "Set :AppleSymbolicHotKeys:51:value:parameters:0 60" ~/Library/Preferences/com.apple.symbolichotkeys.plist
# /usr/libexec/PlistBuddy -c "Print :AppleSymbolicHotKeys:51:value:parameters:0" ~/Library/Preferences/com.apple.symbolichotkeys.plist


# ----------------------------------------------------------------------------------------
# Battery Percentage in status bar
defaults write com.apple.menuextra.battery ShowPercent -bool true


# ----------------------------------------------------------------------------------------
# Add Sidebar Shortcuts

mysides=/usr/local/bin/mysides

# xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance
# sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
# sudo xcodebuild -license

if [ ! -e $mysides ]
  then
    echo "install mysides..."
    git clone https://github.com/mosen/mysides.git
    cd mysides/
    make build
    cd build/Release

    cp mysides "${mysides}"
    cd ../../../
    rm -rf mysides
  else
    echo 'mysides is installed'
fi



readlinkf(){ perl -MCwd -e 'print Cwd::abs_path shift' "$1";}


WORK_DIR="file://$(readlinkf ~/Dropbox/WORK/)"

echo 'before'
$mysides list
$mysides remove "All My Files" &> /dev/null
$mysides remove "Documents" &> /dev/null
$mysides remove "Downloads" &> /dev/null
$mysides remove "Creative Cloud Files" &> /dev/null

$mysides remove "WORK" &> /dev/null
$mysides remove "CODE_GIT" &> /dev/null
mysides add "WORK" "file://$(readlinkf ~/Dropbox/WORK/)"
mysides add "CODE_GIT" "file://$(readlinkf ~/Desktop/DATA/CODE_GIT/)"

echo 'after'
$mysides list

killall "Finder" &> /dev/null
