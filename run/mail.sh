###############################################################################
# Mail                                                                        #
###############################################################################
# Disable send and reply animations in Mail.app
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true
# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
# @: CMD
# $: Shift
# ~: Alt
# ^: Ctrl
# TAB: \U21e5
# ENTER: \U21a9
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\U21a9"
# Display emails in threaded mode, sorted by date (oldest at the top)
# defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"



# Compose mail in plain-text
defaults write com.apple.mail SendFormat Plain
