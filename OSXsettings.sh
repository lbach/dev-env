#!/bin/sh
set -ex
# Enable repeat on keydown
defaults write -g ApplePressAndHoldEnabled -bool false

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Show indicator lights for open applications in the Dock
#defaults write com.apple.dock show-process-indicators -bool true

# Hide the Dock
#defaults write com.apple.Dock autohide -bool TRUE;

# Remove all shortcuts in the Dock
#defaults write com.apple.dock persistent-apps -array

killall Dock

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
#defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# No sound when connecting charger
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true && killall PowerChime

# Show the ~/Library folder
chflags nohidden ~/Library

# No desktop, I just put garbage there...
#defaults write com.apple.finder CreateDesktop false

killall Finder
