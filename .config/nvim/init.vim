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
set noshowmode "does not show the status since it appears in lightline.vim
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
Plug 'junegunn/fzf.vim'               "fzf implementation
Plug 'itchyny/lightline.vim'          "status line
Plug 'editorconfig/editorconfig-vim'  "consistent coding styles
Plug 'ryanoasis/vim-devicons'         "add icons to plugins
Plug 'tpope/vim-fugitive'             "git implementation
Plug 'tpope/vim-surround'             "quickly edit surroundings
Plug 'dense-analysis/ale'             "syntax checker
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' "navigation with git integration…
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "…and syntax highlight
Plug 'sheerun/vim-polyglot'           "language pack
Plug 'mbbill/undotree'                "undo history visualizer
Plug 'gko/vim-coloresque'             "color preview
Plug 'junegunn/goyo.vim'              "writing focused layout
Plug 'mattn/emmet-vim'                "easier and quicker HTML writing
Plug  'mg979/vim-visual-multi'        "multiple cursors
Plug 'Shougo/deoplete.nvim'           "autocompletion

"Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mzlogin/vim-markdown-toc'      "generate table of contents

"LaTeX
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"C
"Plug 'vim-scripts/c.vim'
"Plug 'rip-rip/clang_complete'

"Themes
"Plug 'dracula/dracula-theme'
"Plug 'phanviet/vim-monokai-pro'
"Plug 'altercation/vim-colors-solarized'
call plug#end()
