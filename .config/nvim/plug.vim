if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

    if has("nvim")
        Plug 'tpope/vim-fugitive'
        Plug 'cohama/lexima.vim'
        Plug 'tpope/vim-commentary'
        Plug 'neovim/nvim-lspconfig'
        Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'kyazdani42/nvim-tree.lua'
        Plug 'EdenEast/nightfox.nvim'
        Plug 'hoob3rt/lualine.nvim'
        Plug 'hrsh7th/nvim-compe'
        Plug 'mfussenegger/nvim-jdtls'
        Plug 'onsails/lspkind-nvim'
        Plug 'Shatur/neovim-ayu'
        Plug 'catppuccin/nvim'
        Plug 'kdheepak/tabline.nvim'
        Plug 'tami5/lspsaga.nvim'
        Plug 'rebelot/kanagawa.nvim'
        Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
        Plug 'lukas-reineke/indent-blankline.nvim'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Plug 'navarasu/onedark.nvim' 
        Plug 'dart-lang/dart-vim-plugin'
        Plug 'justinmk/vim-sneak'
        Plug 'rose-pine/neovim'
    endif

call plug#end()

