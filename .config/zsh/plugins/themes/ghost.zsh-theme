source $ZDOTDIR/lib/git.zsh

if [[ -z $ZSH_THEME_GHOST_PREFIX ]]; then
    ZSH_THEME_GHOST_PREFIX=$'\U1F44A\U1F3FB'
fi

ZSH_HAMMER_AND_SICKLE=$'\U262D'

PROMPT='%B%F{252}$ZSH_THEME_GHOST_PREFIX%f%b %B%F{252}%(4~|%-1~/.../%2~|%3~)%f%b %B%F{blue}%f%b%{$reset_color%}'
RPROMPT='%B%F{white}$(git_prompt_info)%f%b'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{252}[%f%F{white}%f"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{252}]%f %F{252}✗%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{252}]%f %B%F{green}✓%f%b"
ZSH_THEME_GIT_PROMPT_ADDED="%F{252}]%f %F{yellow}➕%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{252}]%f %F{yellow}✶%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{252}]%f %F{252}➖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{252}]%f %F{blue}→%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{252}]%f %F{cyan}§%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{252}]%f %F{white}✶%f"
ZSH_THEME_GIT_PROMPT_AHEAD="%F{252}]%f %F{blue}⇡%f"
