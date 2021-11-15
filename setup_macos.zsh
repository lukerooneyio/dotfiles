#!/usr/bin/env zsh

echo "\n<<< Starting MacOS Setup >>>\n"

# close any system preference windows first
osascript -e 'tell application "System Preferences" to quit'


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Desktop & Screen Saver
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Desktop & Screen Saver > Start after: Never
defaults -currentHost write com.apple.screensaver idleTime -int 0

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Dock
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Automatically hide and show the Dock: (delay)
defaults write com.apple.dock autohide-delay -float 0

# System Preferences > Dock > Automatically hide and show the Dock: (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.5
killall Dock

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool false

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.ddisock minimize-to-application -bool true

# System Preferences > Dock > Show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# System Preferences > Dock > Animate opening applications
defaults write com.apple.dock launchanim -bool false

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Mission Control
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Mission Control > Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Trackpad
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Trackpad > Light, Silent Clicking
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad ActuationStrength -int 0

# System Preferences > Trackpad > Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGestureEnabled -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Keyboard
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ## # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# System Preferences > Keyboard > Text > Correct spelling automatically
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# System Preferences > Keyboard > Text > Capitalize word automatically
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# System Preferences > Keyboard > Text > Use smart quotes and dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# System Preferences > Keyboard > Text > Use smart quotes and dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# System Preferences > Keyboard > Text > Add period with double-space
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Finder
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Finder > Preferences > Show warning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder > Preferences > Show wraning before removing from iCloud Drive
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false

# Finder > View > As List
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > Show Status Bar
defaults write com.apple.finder ShowStatusBar -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Hide icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Completely Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Save screenshots to the downloads folder
defaults write com.apple.screencapture location -string "${HOME}/Downloads/temporary/screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Safari
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Disable auto-playing video
defaults write com.apple.Safari WebKitMediaPlaybackAllowsInline -bool false
defaults write com.apple.SafariTechnologyPreview WebKitMediaPlaybackAllowsInline -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2AllowsInlineMediaPlayback -bool false
defaults write com.apple.SafariTechnologyPreview com.apple.Safari.ContentPageGroupIdentifier.WebKit2AllowsInlineMediaPlayback -bool false


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

