call plug#begin()

Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
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

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files({ show_untracked = false })<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>

lua<<EOF
local map = vim.api.nvim_set_keymap

require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
    	end,
	},
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
    	['<C-f>'] = cmp.mapping.scroll_docs(4),
    	['<C-Space>'] = cmp.mapping.complete(),
   	 	['<C-e>'] = cmp.mapping.close(),
    	['<CR>'] = cmp.mapping.confirm {
     		behavior = cmp.ConfirmBehavior.Replace,
      		select = true,
    	},
    	['<Tab>'] = function(fallback)
    		if cmp.visible() then
        		cmp.select_next_item()
      		else
        		fallback()
      		end
    	end,
    	['<S-Tab>'] = function(fallback)
      		if cmp.visible() then
        		cmp.select_prev_item()
      		else
        		fallback()
      		end
		end,
  	},
  	sources = {
		{ name = 'vsnip' },
  	},
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    sources = {
      	{ name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
      	{ name = 'path' }
    }, {
      	{ name = 'cmdline' }
    })
})

local npairs = require("nvim-autopairs")

npairs.setup{
	disable_filetype = { "TelecopePrompt", "Markdown" },
	check_ts = true
}

local ts_conds = require("nvim-autopairs.ts-conds")

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
EOF
