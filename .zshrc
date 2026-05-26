source $HOME/.zsh/environment_variables.zsh
source $HOME/.zsh/functions.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/completion.zsh
source $HOME/.zsh/keybindings.zsh
source $HOME/.zsh/plugins.zsh
source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/other.zsh

if command -v fastfetch > /dev/null; then fastfetch; fi

if command -v zoxide > /dev/null; then eval "$(zoxide init zsh)"; fi
