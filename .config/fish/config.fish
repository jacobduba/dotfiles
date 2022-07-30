# Prompt
set fish_greeting
fish_vi_key_bindings

set -gx EDITOR code

alias ll="ls -lh"

alias fishconf "$EDITOR ~/.config/fish/config.fish"
alias vimrc "$EDITOR ~/.config/nvim/init.vim"
alias swayconf "$EDITOR ~/.config/sway/config"
alias todo "$EDITOR ~/OneDrive/todo.md"
alias workouts "$EDITOR ~/OneDrive/workouts.md"

# Go
set -gx PATH $HOME/bin $PATH $HOME/go/bin

# Nix
fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'