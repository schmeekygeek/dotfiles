if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

    if has("nvim")
        Plug 'akinsho/flutter-tools.nvim'
        " completion plugins
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'cohama/lexima.vim'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-path'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/nvim-cmp'
        Plug 'kylechui/nvim-surround'
        Plug 'hrsh7th/vim-vsnip'
        Plug 'hrsh7th/vim-vsnip-integ'
        " end
        Plug 'tpope/vim-commentary'
        Plug 'neovim/nvim-lspconfig'
        Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'kyazdani42/nvim-tree.lua'
        Plug 'hoob3rt/lualine.nvim'
        Plug 'onsails/lspkind-nvim'
        Plug 'kdheepak/tabline.nvim'
        Plug 'tami5/lspsaga.nvim'
        Plug 'rebelot/kanagawa.nvim'
        Plug 'lukas-reineke/indent-blankline.nvim'
        Plug 'dart-lang/dart-vim-plugin'
        Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
        Plug 'justinmk/vim-sneak'
        Plug 'rose-pine/neovim'
    endif

call plug#end()

