call plug#begin()

"Plug 'shaunsingh/solarized.nvim'
Plug 'shaunsingh/nord.nvim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'rust-lang/rust.vim'
<<<<<<< Updated upstream
=======
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/cSyntaxAfter'
>>>>>>> Stashed changes

call plug#end()

set encoding=utf-8
set tabstop=4
set shiftwidth=4
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

<<<<<<< Updated upstream
=======
set clipboard+=unnamedplus

>>>>>>> Stashed changes
syntax enable
filetype plugin indent on
colorscheme nord

nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-f> :Lines<CR>

lua<<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
EOF
