if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.config/oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto # oh-my-zsh auto update, without asking
# zstyle ':omz:update' frequency 13
ENABLE_CORRECTION="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
# ZSH_CUSTOM=/path/to/new-custom-folder
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
source $ZSH/oh-my-zsh.sh
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='mvim'
fi
