# ----------------------------------------------------------------------------------------

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: Show the ~/Library folder
chflags nohidden ~/Library


# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"


# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false


# Set Desktop as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"


# ----------------------------------------------------------------------------------------
# Add Sidebar Shortcuts

mysides=/usr/local/bin/mysides

# xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance
# sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

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


$mysides list
$mysides remove "All My Files" &> /dev/null
$mysides remove "Documents" &> /dev/null


killall "Finder" &> /dev/null
