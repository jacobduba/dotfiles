call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'shaunsingh/nord.nvim'
Plug 'windwp/nvim-autopairs'

call plug#end()

set encoding=utf-8
set tabstop=4
set shiftwidth=4
set autoindent

set number relativenumber
set scrolloff=3
set sidescroll=3

set pumheight=10

set ruler
set cc=80
set nowrap

set mouse=a

set noswapfile
set hidden

set nofoldenable
set lazyredraw

set clipboard+=unnamedplus

syntax enable
filetype plugin indent on
let g:nord_contrast = v:true
let g:nord_borders = v:true
colorscheme nord

lua<<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
EOF
