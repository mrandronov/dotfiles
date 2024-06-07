#source ~/.zsh_plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

autoload -Uz compinit
compinit

PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin"
export PATH=$HOME/.cargo/env:$PATH
export PATH=/Users/michaela/Library/Python/3.9/bin:$PATH

export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib

# Rust support
source ${HOME}/.cargo/env

PS1='> '

# Aliases
alias ls='ls --color=auto'
alias py3=python3
alias ctags="/usr/local/bin/ctags"

# Git Aliases
alias gits="git status"
alias gitl="git log"

alias doom_infinite="~/Downloads/doom/gzdoom-4-11-3-macOS/GZDoom.app/Contents/MacOS/gzdoom -file ~/Downloads/doom/DOOM_Infinite_DEMO_0978_6/DOOM_Infinite_DEMO_0978_6.pk3"
alias shattered_pixel="java -jar /Users/michaela/Documents/Code/shattered-pixel-dungeon/desktop/build/libs/desktop-2.3.2.jar"

# Functions
cdl() {
    local dir="$1"
    local dir="${dir:=$HOME}"
    if [[ -d "$dir" ]]; then
	cd "$dir" >/dev/null; ls --color=auto
    else
	echo "bash: cdls: $dir: Directory not found"
    fi
}

# Activate zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

case "$TERM" in
*-256color)
    alias ssh='TERM=${TERM%-256color} ssh'
    ;;
*)
    POTENTIAL_TERM=${TERM}-256color
    POTENTIAL_TERMINFO=${TERM:0:1}/$POTENTIAL_TERM

    # better to check $(toe -a | awk '{print $1}') maybe?
    BOX_TERMINFO_DIR=/usr/share/terminfo
    [[ -f $BOX_TERMINFO_DIR/$POTENTIAL_TERMINFO ]] && \
        export TERM=$POTENTIAL_TERM

    HOME_TERMINFO_DIR=$HOME/.terminfo
    [[ -f $HOME_TERMINFO_DIR/$POTENTIAL_TERMINFO ]] && \
        export TERM=$POTENTIAL_TERM
    ;;
esac

[ -f "/Users/michaela/.ghcup/env" ] && source "/Users/michaela/.ghcup/env" # ghcup-env
