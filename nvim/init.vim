call plug#begin('~/.local/share/nvim/plugged')
"Install NerdTree
Plug 'preservim/nerdtree'

"Install NerdCommenter
Plug 'preservim/nerdcommenter'

"Install Blankline
Plug 'lukas-reineke/indent-blankline.nvim'

" Install Telescope
 Plug 'nvim-lua/popup.nvim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'

" Add any additional Telescope extensions you want to install
" For example, to install the FZF extension:
 Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

 "Install Lualine
 Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'nvim-tree/nvim-web-devicons'

"Install Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Install Barbar
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim'
call plug#end()

" Show line numbers
set number

" Set Leader
let mapleader = ","

 lua << END
require('lualine').setup()
END

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python", "vue"}, -- list of languages you want to enable
  highlight = {
    enable = true,                      -- enable highlighting
  },
}
EOF
