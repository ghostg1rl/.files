source $ZDOTDIR/lib/git.zsh

if [[ -z $ZSH_THEME_FURIO_PREFIX ]]; then
    ZSH_THEME_FURIO_PREFIX=$'\U1F44A\U1F3FB'
fi

ZSH_HAMMER_AND_SICKLE=$'\U262D'

PROMPT='%B%F{blue}$ZSH_THEME_FURIO_PREFIX%f%b%B%F{red}%p%f%b %F{red}%c%f %B%F{blue}%f%b%{$reset_color%}'
RPROMPT='%B%F{white}$(git_prompt_info)%f%b'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{red}[%f%F{white}%f"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}]%f %F{red}✗%f%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%F{red}]%f %B%F{green}✓%f%b "
ZSH_THEME_GIT_PROMPT_ADDED="%F{red}]%f %F{yellow}➕%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{red}]%f %F{yellow}✶%f "
ZSH_THEME_GIT_PROMPT_DELETED="%F{red}]%f %F{red}➖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{red}]%f %F{blue}→%f "
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{red}]%f %F{cyan}§%f "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{red}]%f %F{white}✶%f "
ZSH_THEME_GIT_PROMPT_AHEAD="%F{red}]%f %F{blue}⇡%f "
