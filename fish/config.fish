# Remove greeting
set fish_greeting

# Vi bindings
fish_vi_key_bindings
set fish_cursor_default     block
set fish_cursor_insert      line
set fish_cursor_replace_one underscore
set fish_cursor_visual      block

# Enviroment
set -gx EDITOR nvim
fish_add_path $HOME/.local/bin

# Aliases
alias cat "bat"
alias docker "podman -r"
alias podman "podman -r"
alias tb "distrobox enter toolbox" 
alias fishconf "$EDITOR ~/.config/fish/config.fish"
alias vimrc "$EDITOR ~/.config/nvim/init.vim"
alias lg "lazygit"

# Atuin shell history
if type -q fish
	atuin init fish --disable-up-arrow | source
end
