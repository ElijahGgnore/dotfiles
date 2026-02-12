export PATH="$HOME/.local/bin/:$PATH"

HISTFILE=~/.zsh_history
HISTSIZE=10000 # N of lines to read at the start of the session
SAVEHIST=10000 # N of lines to save at the end of the session

[ -x nvim ] && export MANPAGER='nvim +Man!' # If nvim is available, use it as a man pager
