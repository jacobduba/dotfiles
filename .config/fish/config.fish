# Prompt
set fish_greeting
fish_vi_key_bindings

# Defaults
set -gx EDITOR code

# Aliases
alias ll="ls -lh"
alias fishconf "$EDITOR ~/.config/fish/config.fish"
alias vimrc "$EDITOR ~/.config/nvim/init.vim"
alias swayconf "$EDITOR ~/.config/sway/config"
alias todo "$EDITOR ~/OneDrive/todo.md"
alias workouts "$EDITOR ~/OneDrive/workouts.md"

# Gopath
set -gx PATH $HOME/bin $PATH $HOME/go/bin

# Nix
# fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'

# Linuxbrew
# eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Source Allies
set cli_dir "~/Documents/sai-aws-auth/cli-auth"
alias dev "pushd $cli_dir && fenv source login-aws-dev.sh && popd"
alias qual "pushd $cli_dir && fenv source login-aws-qual.sh && popd"
alias prod "pushd $cli_dir && fenv source login-aws-prod.sh && popd"
alias shared "pushd $cli_dir && fenv source login-aws-shared.sh && popd"
alias sandbox.dev "pushd $cli_dir && fenv source login-aws-sandbox-dev.sh && popd"
alias sandbox.prod "pushd $cli_dir && fenv source $cli_dir/login-aws-sandbox-prod.sh && popd"