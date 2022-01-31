source $ZDOTDIR/lib/git.zsh

if [[ -z $ZSH_THEME_GHOST_PREFIX ]]; then
    # ZSH_THEME_GHOST_PREFIX=$'\U1F44A\U1F3FB'
    ZSH_THEME_GHOST_PREFIX='👻'
fi

ZSH_HAMMER_AND_SICKLE=$'\U262D'

PROMPT='%B%F{111}$ZSH_THEME_GHOST_PREFIX%f%b %B%F{111}%(4~|%-1~/.../%2~|%3~)%f%b %B%F{blue}%f%b%{$reset_color%}'
RPROMPT='%B%F{white}$(git_prompt_info)%f%b'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{111}[%f%F{white}%f"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{111}]%f %F{111}✗%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{111}]%f %B%F{green}✓%f%b"
ZSH_THEME_GIT_PROMPT_ADDED="%F{111}]%f %F{yellow}➕%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{111}]%f %F{yellow}✶%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{111}]%f %F{111}➖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{111}]%f %F{blue}→%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{111}]%f %F{cyan}§%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{111}]%f %F{white}✶%f"
ZSH_THEME_GIT_PROMPT_AHEAD="%F{111}]%f %F{blue}⇡%f"
