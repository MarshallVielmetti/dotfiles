alias h="history | fzf"
alias c="clear"
alias e="exit"


source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"

export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
