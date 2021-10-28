if [[ -n "${HOME}/.zshrc" ]]; then
  rm "${HOME}/.zshrc"
fi

# Reload
test -d ~/.zshrc && source ~/.zshrc

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set ZSH as the default shell
chsh -s /usr/bin/zsh $(whoami)

# Install GitHub CLI
brew install gh

echo "\n$(cat .zshrc)" >> ~/.zshrc
