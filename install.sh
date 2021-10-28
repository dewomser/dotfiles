
# delete existing .zshrc if it already exists
if [[ -n "${HOME}/.zshrc" ]]; then
  rm "${HOME}/.zshrc"
fi

# links
if [[ -n  "$CODESPACES" ]]; then
  ln -s /workspaces/.codespaces/.persistedshare/dotfiles/.zshrc ~/
else
  ln -s ~/.dotfiles/.zshrc ~/
fi

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install GitHub CLI
brew install gh
