computername=$(scutil --get ComputerName)
computername=${computername/Stefan’s/signalwerk}
computername=${computername/ /-}

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "$computername"
sudo scutil --set LocalHostName "$computername"
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "<%- osx.computername %>"
