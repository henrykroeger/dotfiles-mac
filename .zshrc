# Aliases
alias cat="bat"
alias vim="nvim"
alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"

# Autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Completions are not working right now in ZSH 5.9. When this is fixed,
# I should reenable completions here.

# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"

