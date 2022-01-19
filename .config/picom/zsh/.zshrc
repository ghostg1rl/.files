# Export some environmental variables
ZSH="/home/thereayou/.oh-my-zsh"
ZSHRC="/home/thereayou/.config/zsh/.zshrc"
BROWSER="firefox"
TERM="alacritty"
EDITOR="vim"
VISUAL="vim"

# Set the omz theme
ZSH_THEME="custom"

# A reminder for omz update
zstyle ':omz:update' mode reminder

# Custom folder for 'custom' omz directory
ZSH_CUSTOM=$HOME/.config/zsh/custom

# Set up some plugins
plugins=(git archlinux zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Some custom aliases

# system
alias pacman="sudo pacman"
alias sudo="sudo -v; sudo "
alias vim="nvim"
alias shutdown="shutdown now"

#personal
alias zshrc="nvim ~/.config/zsh/.zshrc"

# Commands to execute on launch
# neofetch
