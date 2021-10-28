# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set ZSH as the default shell
chsh -s /usr/bin/zsh $(whoami)

# Install GitHub CLI
brew install gh
