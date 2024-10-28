local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'                                        -- Packer itself
  use 'catppuccin/nvim'                                               -- catppuccin color scheme
  use 'rose-pine/neovim'                                              -- rose-pine color scheme
  use 'hoob3rt/lualine.nvim'                                          -- Lualine
  use 'neovim/nvim-lspconfig'                                         -- LSP
  use 'onsails/lspkind-nvim'                                          -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'                                            -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'                                          -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                                              -- Completion
  use ({'L3MON4D3/LuaSnip', tag = 'v<CurrentMajor>.*'})                -- Snippet engine
  use 'nvim-treesitter/nvim-treesitter'                               -- Treesitter syntax highlighting
  use 'windwp/nvim-autopairs'                                         -- Auto parentheses pairing
  use 'nvim-telescope/telescope-file-browser.nvim'                    -- Telescope's file-browser extension
  use 'windwp/nvim-ts-autotag'                                        -- Auto tag pairing
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use 'nvim-telescope/telescope.nvim'                                 -- telescope 
  use 'kyazdani42/nvim-web-devicons'                                  -- web devicons
  use 'akinsho/nvim-bufferline.lua'                                   -- bufferline
  use 'akinsho/flutter-tools.nvim'                                    -- flutter development tools
  use 'dart-lang/dart-vim-plugin'                                     -- Dart plugin for neovim
  use 'kylechui/nvim-surround'                                        -- Surround plugin
  use 'williamboman/mason.nvim'                                       -- mason
  use 'williamboman/mason-lspconfig.nvim'                             -- mason lspconfig
  use 'ggandor/leap.nvim'                                             -- nvim leap
  use 'rebelot/kanagawa.nvim'                                         -- kanagawa color scheme
  use 'theprimeagen/vim-be-good'                                      -- plugin to practice vim
  use 'letieu/hacker.nvim'
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use 'ellisonleao/gruvbox.nvim'
  use 'iagorrr/noctis-hc.nvim'
  use 'mfussenegger/nvim-jdtls'
  use 'f-person/git-blame.nvim'
  use ({ 'Wansmer/treesj', requires = { 'nvim-treesitter' } })        -- plugin to toggle or split codeblocks
  use 'preservim/vim-pencil'
  use 'craftzdog/solarized-osaka.nvim'
  use '/home/abdul_samad/development/nvimplugs/example'
  use 'diegoulloao/neofusion.nvim'
  use 'nvim-treesitter/nvim-treesitter-context'
end)
