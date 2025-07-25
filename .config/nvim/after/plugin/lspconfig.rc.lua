local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)
local status, mason = pcall(require, 'mason')
local masonlsp = require('mason-lspconfig')
if (not status) then return end

mason.setup()
masonlsp.setup()

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  keymap.set('n', 'gD', vim.lsp.buf.declaration(), opts)
  keymap.set('n', 'gi', vim.lsp.buf.implementation(), opts)
  keymap.set('n', 'gd', vim.lsp.buf.definition(), opts)
  keymap.set('n', 'ga', vim.lsp.buf.code_action(), opts)
  keymap.set('n', 'gh', vim.lsp.buf.hover(), opts)
  keymap.set('n', 'gf', vim.lsp, opts)
  keymap.set('n', 'gr', vim.lsp.buf.rename(), opts)
  keymap.set('n', 'go', vim.diagnostic.show(), opts)
  keymap.set('n', 'gj', vim.diagnostic.goto_next(), opts)
  keymap.set('n', 'gk', vim.diagnostic.goto_prev(), opts)
end

vim.diagnostic.config({
  signs = true,
})

-- typescript language server
nvim_lsp.ts_ls.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  autostart = false,
  cmd = { "typescript-language-server", "--stdio" },
}

-- dart language server
require("flutter-tools").setup{

  lsp = {
    on_attach = on_attach,
    capabilities = capabilities
  }
}

-- astro language server
nvim_lsp.astro.setup{
    autostart = false
}
-- tailwindcss language server
nvim_lsp.tailwindcss.setup{
    autostart = false
}
-- rust language server
nvim_lsp.rust_analyzer.setup{
    autostart = false
}

-- svelte language server
nvim_lsp.svelte.setup{
    autostart = false
}

-- go language server
nvim_lsp.gopls.setup{
    autostart = true
}

nvim_lsp.basedpyright.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    basedpyright = {
      typeCheckingMode = "basic", -- or "strict"
      autoImportCompletions = true,
    }
  }
}
