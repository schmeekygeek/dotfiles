local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer itself
  use({
    'rose-pine/neovim', -- Rose Pine theme
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  use 'hoob3rt/lualine.nvim'                                          -- Lualine
  use 'neovim/nvim-lspconfig'                                         -- LSP
  use 'onsails/lspkind-nvim'                                          -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'                                            -- nnvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'                                          -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                                              -- Completion
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})                -- Snippet engine
  use 'nvim-treesitter/nvim-treesitter'                               -- Treesitter syntax highlighting
  use 'windwp/nvim-autopairs'                                         -- Auto parentheses pairing
  use 'windwp/nvim-ts-autotag'                                        -- Auto tag pairing
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'                                 -- telescope 
  use 'nvim-telescope/telescope-file-browser.nvim'                    -- telescope filebrowser
  use 'kyazdani42/nvim-web-devicons'                                  -- web devicons
  use 'akinsho/nvim-bufferline.lua'                                   -- bufferline
  use 'glepnir/lspsaga.nvim'                                          -- useful uis for lsp
  use 'akinsho/flutter-tools.nvim'                                    -- flutter development tools
  use 'dart-lang/dart-vim-plugin'                                     -- Dart plugin for neovim
  use 'kylechui/nvim-surround'                                        -- Surround plugin
end)
