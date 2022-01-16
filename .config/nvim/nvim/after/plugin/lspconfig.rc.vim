if !exists('g:lspconfig')
    finish
endif

lua <<EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

-- Mappings.
local opts = { noremap = true, silent = true }

buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
end

end

nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" }
    }


require'lspconfig'.jdtls.setup{
    \   cmd = { 'jdtls' };
    \   filetypes = {'java'};
    \   root_dir = function(fname)
    \      return require'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
    \   end
    \}

require('lspkind').init({
-- enables text annotations
--
-- default: true
with_text = true,

-- default symbol map
-- can be either 'default' (requires nerd-fonts font) or
-- 'codicons' for codicon preset (requires vscode-codicons font)
--
-- default: 'default'
preset = 'codicons',

-- override preset symbols
--
-- default: {}
symbol_map = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "ﰠ",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "塞",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "פּ",
    Event = "",
    Operator = "",
    TypeParameter = ""
    },
})
EOF
