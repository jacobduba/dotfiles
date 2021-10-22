call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf', 
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'rust-lang/rust.vim'

call plug#end()

set encoding=utf-8
set tabstop=8
set shiftwidth=8
set autoindent

set number
set scrolloff=3
set sidescroll=3

set ruler
set cc=80
set nowrap

set mouse=a

set noswapfile
set hidden

set nofoldenable
set lazyredraw

syntax enable
filetype plugin indent on
colorscheme solarized

nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-f> :Lines<CR>
