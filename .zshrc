if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.config/oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto # oh-my-zsh auto update, without asking
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_CUSTOM="$HOME/.config/oh-my-zsh-custom"
plugins=(
	git
	aliases
	common-aliases
	autojump
	colored-man-pages
	colorize
	command-not-found
	copyfile
	copypath
	dnf
	fd
	fzf
	npm
	nvm
	pip
	pipenv
	zsh-autosuggestions
	zsh-interactive-cd
)
eval "$(mcfly init zsh)"
source $ZSH/oh-my-zsh.sh
