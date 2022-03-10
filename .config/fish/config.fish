set fish_greeting

set -gx PATH $HOME/bin $PATH $HOME/go/bin

set -gx EDITOR nvim
set -gx BROWSER firefox
set -gx TERMINAL termite

set -gx BEMENU_OPTS "-l 10 --ignorecase -n --fn 'Fira Code 11' --tf '#FFFFFF' --hf '#FFFFFF'"
set -gx MOZ_ENABLE_WAYLAND 1
set -gx _JAVA_AWT_WM_NONREPARENTING 1
set -gx QT_QPA_PLATFORMTHEME qt5ct

alias r="ranger"
alias ll="ls -lh"

alias fishconf "$EDITOR ~/.config/fish/config.fish"
alias vimrc "$EDITOR ~/.config/nvim/init.vim"
alias swayconf "$EDITOR ~/.config/sway/config"
alias todo "$EDITOR ~/OneDrive/todo.md"
alias workouts "$EDITOR ~/OneDrive/workouts.md"

zoxide init fish | source

if status is-interactive

end
