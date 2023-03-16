# Shell
set fish_greeting
fish_vi_key_bindings

# Enviroment
set -gx EDITOR nvim
fish_add_path $HOME/.local/bin

# Aliases
alias fishconf "$EDITOR ~/.config/fish/config.fish"
alias vimrc "$EDITOR ~/.config/nvim/init.vim"