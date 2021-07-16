#!/bin/bash -ex

# Inspiration:
# - http://fredkelly.net/articles/2014/10/19/developing_on_yosemite.html
# - https://github.com/sorenvind/dev-env
# - https://github.com/mads-hartmann/dotfiles

# Set up OSX settings
echo "Consider setting up OSX:"
echo './OSXsettings.sh'

# Install common sanity
echo "> Installing common sanity..."
brew install python@3.7 python@3.8
brew install fish
brew install asdf coreutils make gnu-sed wget curl git tree pstree jq mg
brew install --cask iterm2 google-chrome visual-studio-code docker


echo "> Setting up fish..."
mkdir -p ~/.config/fish/functions
cp -r home/dotconfig/fish  ~/.config/fish/
grep -q fish /etc/shells && sudo sh -c "echo '/usr/local/bin/fish' >> /etc/shells"

echo "> Done!"

bash mg-setup.sh
# ASFD: + python, elixir
# Add/update fish completions to ASFD


echo "-----------------------------------------"
echo "Manual steps:"
echo "-----------------------------------------"
echo "- Setup terminal to import solazried-dark theme, with Menlo Regular 10pt and block cursor."
echo "- ensure ~/.gitconfig is correct"
echo "- Fix all issues from running brew doctor"
echo "- Set up short cuts http://apple.stackexchange.com/questions/167967/creating-system-wide-keyboard-shortcut-to-launch-applications"
echo "- Configure shiftit, jumpcut to start, etc..."
echo "- Open Sublime and install Package Control"
echo "change shell to fish"
