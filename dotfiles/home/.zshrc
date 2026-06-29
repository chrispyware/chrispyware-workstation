# Chrispyware Workstation - Zsh config

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt hist_ignore_dups
setopt hist_ignore_space

# Better behavior
setopt autocd
setopt correct
setopt interactivecomments

# Completion
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Keybindings
bindkey -e

# Useful aliases
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias cls='clear'
alias grep='grep --color=auto'

alias ..='cd ..'
alias ...='cd ../..'

alias pacup='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacrm='sudo pacman -Rns'
alias pacsearch='sudo pacman -Ss'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate --all'

# Prompt
PROMPT='%F{#22e156}>%f %F{#f9f9f9}%n%f:%F{#22e156}%~%f >'

# Chrispyware terminal title
precmd() {
  print -Pn "\e]0;> chrispyware_\a"
}

# Chrispyware LS_COLORS
if [ -f ~/.config/chrispyware/shell/dircolors ]; then
  eval "$(dircolors ~/.config/chrispyware/shell/dircolors)"
fi
