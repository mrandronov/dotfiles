
default:
        just --list

add config:
        cp -r {{config}} {{invocation_directory()}}

update:
        @just add ~/.config/nvim
        @just add ~/.config/alacritty
        @just add ~/.zshrc
        @just add ~/.tmux.conf
