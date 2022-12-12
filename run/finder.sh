# https://github.com/ulwlu/dotfiles/blob/2753a38ee7ab1f5e3c339e10fd722874ccd0b48c/system/macos.sh


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
# - as Icons
# defaults write com.apple.Finder FXPreferredViewStyle -string icnv
# - as Columns
defaults write com.apple.Finder FXPreferredViewStyle -string Nlsv
# - as Gallary View
# defaults write com.apple.Finder FXPreferredViewStyle -string clmv
# - as List
# defaults write com.apple.Finder FXPreferredViewStyle -string Flwv


### Play user interface sound effects: false
/usr/bin/defaults write com.apple.systemsound 'com.apple.sound.uiaudio.enabled' -int 0

# Battery Percentage in status bar
defaults write com.apple.menuextra.battery ShowPercent -bool true


# ----------------------------------------------------------------------------------------
# display the app switcher on all monitors 
defaults write com.apple.dock appswitcher-all-displays -bool true
killall Dock

# ----------------------------------------------------------------------------------------
# check
# defaults read com.apple.systemuiserver menuExtras

# Show Bluetooth in menu bar
# - Checked
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Bluetooth -int 18

# Show volume in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist Sound -int 18


# for restart menuExtras
killall SystemUIServer



killall "Finder" &> /dev/null
