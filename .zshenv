#!/usr/bin/zsh

################################
# export environment variables #
################################

# path
export PATH=$PATH:$HOME/scripts/

# xdg
export XDG_DATA_HOME="$HOME/.local/share/" \
    XDG_STATE_HOME="$HOME/.local/state/" \
    XDG_CONFIG_HOME="$HOME/.config/" \
    XDG_CACHE_HOME="$HOME/.cache/" \
    XDG_DATA_DIRS="/usr/local/share/:/usr/share/" \
    XDG_CONFIG_DIRS="/etc/xdg/" \

# '.' files
export DOTFILES="$HOME/.files"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh" \
    HISTFILE="$XDG_STATE_HOME/zsh/history" \
    HISTSIZE=10000 \
    SAVEHIST=10000 \
    ZSHRC="/home/thereayou/.config/zsh/.zshrc" \

# editor
export EDITOR="nvim" \
    VISUAL="nvim"

# other
export BROWSER="firefox" \
    TERM="alacritty"
