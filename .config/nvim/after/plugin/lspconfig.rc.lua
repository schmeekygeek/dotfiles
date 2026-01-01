local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local status, mason = pcall(require, 'mason')
local masonlsp = require('mason-lspconfig')
if (not status) then return end

mason.setup()
masonlsp.setup()

local on_attach = function(_, bufnr)

  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
  vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'ga', function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set('n', 'gh', function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set('n', 'gf', function() vim.lsp.buf.format() end, opts)  -- fixed
  vim.keymap.set('n', 'gr', function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set('n', 'go', function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set('n', 'gj', function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set('n', 'gk', function() vim.diagnostic.goto_prev() end, opts)
end

vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- typescript language server
vim.lsp.config.ts_ls = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  capabilities = capabilities,
  on_attach = on_attach,
  autostart = false
}
vim.lsp.enable("ts_ls")

-- dart language server
require("flutter-tools").setup{

  lsp = {
    on_attach = on_attach,
    capabilities = capabilities
  }
}

-- astro language server
vim.lsp.config.astro = {
  capabilities = capabilities,
  on_attach = on_attach,
  autostart = true
}
vim.lsp.enable("astro")

-- tailwindcss language server
vim.lsp.config.tailwindcss = {
  autostart = false
}
vim.lsp.enable("tailwindcss")


-- rust language server
vim.lsp.config.rust_analyzer = {
  capabilities = capabilities,
  on_attach = on_attach,
  autostart = false
}
vim.lsp.enable("rust_analyzer")

-- svelte language server
vim.lsp.config.svelte = {
  autostart = false,
  capabilities = capabilities,
  on_attach = on_attach,
}
vim.lsp.enable("rust_analyzer")

-- go language server
vim.lsp.config.gopls = {
  capabilities = capabilities,
  on_attach = on_attach,
  autostart = true
}
vim.lsp.enable("tailwindcss")

vim.lsp.basedpyright = {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    basedpyright = {
      typeCheckingMode = "basic", -- or "strict"
      autoImportCompletions = true,
    }
  }
}
vim.lsp.enable("basedpyright")
