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

local client = vim.lsp.start_client {
  name = "golsp",
  cmd = { "/home/abdul_samad/development/lsptest/main" },
  on_attach = on_attach,
}

if not client then 
  vim.notify("client not appropriate")
  return
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
