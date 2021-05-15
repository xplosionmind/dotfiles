syntax on
set autoindent
set incsearch
set hlsearch
set smartcase
set number
set tabstop=4
set shiftwidth=4
set mouse=a
set showcmd
set inccommand=nosplit
set spelllang=it
set guifont=Ubuntu\ Mono:h18
autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
"Plug 'vim-scripts/c.vim'
"Plug 'rip-rip/clang_complete'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
"Plug 'Shougo/deoplete.nvim'
"Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'
Plug 'gko/vim-coloresque'

" MARKDOWN
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'mzlogin/vim-markdown-toc'

" LaTeX
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"HTML
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'mattn/emmet-vim'

"THEMES
"Plug 'dracula/dracula-theme'
"Plug 'phanviet/vim-monokai-pro'
"Plug 'altercation/vim-colors-solarized'
call plug#end()
