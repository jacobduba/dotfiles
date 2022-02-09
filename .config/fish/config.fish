set fish_greeting

set -gx PATH $HOME/bin $PATH

set -gx EDITOR nvim
set -gx BROWSER firefox
set -gx TERMINAL termite

set -gx BEMENU_OPTS "-l 10 --ignorecase -n --fn 'Fira Code 11' --tf '#FFFFFF' --hf '#FFFFFF'"
set -gx MOZ_ENABLE_WAYLAND 1
set -gx _JAVA_AWT_WM_NONREPARENTING 1
set -gx QT_QPA_PLATFORMTHEME qt5ct

alias r "ranger"
alias lg "lazygit"

alias fishconf "$EDITOR ~/.config/fish/config.fish"
alias vimrc "$EDITOR ~/.config/nvim/init.vim"
alias swayconf "$EDITOR ~/.config/sway/config"
alias todo "$EDITOR ~/onedrive/todo.md"
alias workouts "$EDITOR ~/onedrive/workouts.md"

if status is-interactive

end