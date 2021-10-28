# delete previous installations
echo "\e[32m[DOT]\e[34m deleting previous installation of this dotfiles ... \e[39m\n"
rm -rf ~/.oh-my-zsh/ ~/.zshrc > /dev/null 2>&1

# Install GitHub CLI
brew install gh

# Reloads the Environment
test -d ~/.zshrc && source ~/.zshrc
test -d ~/.profile && source ~/.profile

# removes previous oh-my-zsh
sudo rm -rf ~/.oh-my-zsh/

# installs oh-my-zsh
echo "\e[32m[DOT]\e[34m installing oh my zsh ... \e[39m\n"
! sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended > /dev/null 2>&1

echo "\e[32m[DOT]\e[34m copying environment files ... \e[39m\n"

# copies the ZSH environment file
cp .zshrc ~/.zshrc > /dev/null 2>&1

# touches zsh history file
[[ ! -f ~/.zsh_history ]] && touch ~/.zsh_history

echo "\e[32mInstallation Finished. Exiting. \e[39m\n"

exit 0
