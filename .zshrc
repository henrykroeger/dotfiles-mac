# Basics
export EDITOR="nvim"
export VISUAL="nvim"

# Aliases
alias cat="bat"
alias vim="nvim"
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"
alias lg="lazygit"
alias lgdots="lazygit --git-dir=$HOME/.dots --work-tree=$HOME"

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
source ~/.config/zsh/catppuccin_frappe-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(fnm env --use-on-cd)"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
