"------------------------------------------------------------------------------
" GENERAL
"------------------------------------------------------------------------------
set encoding=utf-8
set nocompatible
"------------------------------------------------------------------------------
" PLUGINS
"------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'arcticicestudio/nord-vim'
call plug#end()
"------------------------------------------------------------------------------
" APPEARANCE
"------------------------------------------------------------------------------
colo nord
set background=dark
set ruler
set list listchars=tab:\ \ ,trail:·

highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)
"------------------------------------------------------------------------------
" BEHAVIOUR
"------------------------------------------------------------------------------
autocmd BufWritePre * :%s/\s\+$//e

set clipboard^=unnamed,unnamedplus
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent
set hlsearch
set incsearch
set wildmenu
set noswapfile
set nowb
set nowrap
set ignorecase
set showcmd
set splitright
set splitbelow

set backspace=indent,eol,start
