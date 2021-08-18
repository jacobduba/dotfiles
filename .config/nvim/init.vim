call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf', 
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'

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

set nofoldenable
set lazyredraw

syntax enable
colorscheme solarized

nnoremap <silent> <C-p> :Files<CR>
