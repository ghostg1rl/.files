# Some custom aliases
source ~/aliases

# Commands to execute on launch
# neofetch

# Source one man's completions
source $ZDOTDIR/plugins/completions.zsh

# Get the theme
fpath=($ZDOTDIR/plugins/themes/ $fpath)
source $ZDOTDIR/plugins/themes/comrade.zsh-theme

# # The following lines were added by compinstall
#
# zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
# zstyle ':completion:*' expand prefix suffix
# zstyle ':completion:*' ignore-parents parent pwd
# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# zstyle ':completion:*' list-suffixes true
# zstyle ':completion:*' max-errors 5
# zstyle ':completion:*' menu select=long
# zstyle ':completion:*' original false
# zstyle ':completion:*' preserve-prefix '//[^/]##/'
# zstyle ':completion:*' prompt 'consider the corrections given below...'
# zstyle ':completion:*' squeeze-slashes true
# zstyle ':completion:*' use-compctl false
# zstyle :compinstall filename '/home/thereayou/.config/zsh//.zshrc'
#
# autoload -Uz compinit; compinit
#
# # End of lines added by compinstall
# # Lines configured by zsh-newuser-install
# setopt extendedglob
# unsetopt beep notify
# bindkey -e
# # End of lines configured by zsh-newuser-install

# Some random additional options (deal with them later)
setopt HIST_SAVE_NO_DUPS  # Do not write a duplicate event to the history file.
setopt prompt_subst
_comp_options+=(globdots) # Autocomplete '.' files
