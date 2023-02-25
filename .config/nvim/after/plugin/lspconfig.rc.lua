local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local status, mason = pcall(require, 'mason')
local masonlsp = require('mason-lspconfig')
if (not status) then return end

mason.setup()
masonlsp.setup()

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

vim.diagnostic.config({
  signs = false,
})

-- typescript language server
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
}

-- java language server
require('lspconfig')['jdtls'].setup {
    capabilities = capabilities
}

-- dart language server
require("flutter-tools").setup{}

-- astro language server
nvim_lsp.astro.setup{}
--tailwindcss language server
nvim_lsp.tailwindcss.setup{}
