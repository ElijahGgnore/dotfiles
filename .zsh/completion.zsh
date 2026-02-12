autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
