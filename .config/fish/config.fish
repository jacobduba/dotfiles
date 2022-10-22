# Shell
set fish_greeting
fish_vi_key_bindings

# Enviroment
set -gx EDITOR nvim
fish_add_path $HOME/go/bin $HOME/.local/bin

# Aliases
alias ll="ls -lh"
alias fishconf "$EDITOR ~/.config/fish/config.fish"
alias vimrc "$EDITOR ~/.config/nvim/init.vim"

# Source Allies
if test -d ~/Documents/sai-aws-auth
    set cli_dir "~/Documents/sai-aws-auth/cli-auth"
    alias dev "pushd $cli_dir && fenv source login-aws-dev.sh && popd"
    alias qual "pushd $cli_dir && fenv source login-aws-qual.sh && popd"
    alias prod "pushd $cli_dir && fenv source login-aws-prod.sh && popd"
    alias shared "pushd $cli_dir && fenv source login-aws-shared.sh && popd"
end
