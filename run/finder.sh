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


# Battery Percentage in status bar
defaults write com.apple.menuextra.battery ShowPercent -bool true

# ----------------------------------------------------------------------------------------
# check
# defaults read com.apple.systemuiserver menuExtras

# Show Bluetooth in menu bar
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

# Show volume in menu bar
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Volume.menu"

# for restart menuExtras
killall SystemUIServer



killall "Finder" &> /dev/null
