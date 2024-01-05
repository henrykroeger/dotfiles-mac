# Aliases
alias cat="bat"
alias vim="nvim"
alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"

# zsh completion engine configuration
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select
zstyle :compinstall filename '/Users/hkroeger/.zshrc'

autoload -Uz compinit
compinit

# Autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(fnm env --use-on-cd)"

eval "$(starship init zsh)"

