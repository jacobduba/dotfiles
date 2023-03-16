#!/bin/fish

# This script sets up my dotfiles in a new environment.
# It is idempotent, so it can be run multiple times without causing problems.

# Clean up the home directory.
rm -rf ~/Pictures
rm -rf ~/Videos
rm -rf ~/Music
rm -rf ~/Desktop

# Create symlinks to the dotfiles in the home directory.
ln -sf (realpath user-dirs.dirs) ~/.config/
ln -sf (realpath ssh/*) ~/.ssh/
ln -sf (realpath fish/*) ~/.config/fish/
ln -sf (realpath git/*) ~/.config/git/
ln -sf (realpath nvim/*) ~/.config/nvim/
ln -sf (realpath onedrive/*) ~/.config/onedrive/

# Setup fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher jorgebucaran/nvm.fish jorgebucaran/nvm.fish oh-my-fish/plugin-foreign-env

# Setup nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qa

