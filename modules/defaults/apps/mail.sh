## --------------------------------------------------------------------------
# Mail
## --------------------------------------------------------------------------

# Forces messages in Mail to be displayed as plain text instead of formatted (0 to reverse)
defaults write com.apple.mail PreferPlainText -bool TRUE

# don't add invitations to iCal automatically
defaults write com.apple.mail AddInvitationsToICalAutomatically -bool false

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool false

# Disable send and reply animations in Mail.app
defaults write com.apple.Mail DisableReplyAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true

