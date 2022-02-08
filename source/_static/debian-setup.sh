#!/usr/bin/bash

echo -e "Rudimentary automated setup script for Debian-based Linux distros."
echo -e "Anh Hoang Nguyen (c) 2022. GPLv3."
echo -e "iam@hoanganh.dev"
echo -e "----------------------------"

echo -e "YOU WILL BE PROMPTED FOR SUPERUSER PASSWORD."
read -p "Press ENTER to continue..."



echo -e "Setting script to run non-interactively."
export DEBIAN_FRONTEND=noninteractive

echo -e "Running: apt update and upgrade"
sudo update && upgrade -y

echo -e "Running: Install commonly-used packages from apt."
sudo apt install git zsh net-tools build-essential powerline \
    fonts-powerline fonts-firacode vim openssh-server \
    tmux python3 python-is-python3 python3-pip curl

echo -e "Running: Changing default shell to zsh and additional configurations."
chsh -s /bin/zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
sed -i 's/robbyrussell/jonathan/g' ~/.zshrc

echo -e "Setup script completed successfully."
exit 0