export INSTALL_ZSH=true

# Install & Configure Zsh
if [ "$INSTALL_ZSH" = "true" ]
then
    sudo apt-get install -y \
    zsh

    cp -f ~/dotfiles/.zshrc ~/.zshrc
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
fi
