if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-commentary'

if has("nvim")
    Plug 'othree/xml.vim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'Chiel92/vim-autoformat'
    Plug 'hrsh7th/nvim-compe'
    Plug 'mfussenegger/nvim-jdtls'
    Plug 'stevearc/dressing.nvim'
    Plug 'morhetz/gruvbox'
    Plug 'onsails/lspkind-nvim'
    Plug 'Shatur/neovim-ayu'
    Plug 'catppuccin/nvim'
endif

call plug#end()
