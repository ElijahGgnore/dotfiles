autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

zstyle ':completion::complete:*' gain-privileges 1

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
