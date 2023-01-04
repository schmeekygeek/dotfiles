local status, lspsaga = pcall(require, "lspsaga")
local keymap = vim.keymap
if (not status) then return end

lspsaga.init_lsp_saga();
keymap.set('n', 'gh', '<Cmd>Lspsaga lsp_finder<cr>', { silent = true })
keymap.set('n', 'ca', '<Cmd>Lspsaga code_action<cr>', { silent = true })
keymap.set('n', 'dh', '<Cmd>Lspsaga hover_doc<cr>', { silent = true })
keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', { silent = true })
keymap.set('n', 'go', '<Cmd>Lspsaga show_line_diagnostics<cr>', { silent = true })
keymap.set('n', 'gj', '<Cmd>Lspsaga diagnostic_jump_next<cr>', { silent = true })
keymap.set('n', 'gk', '<Cmd>Lspsaga diagnostic_jump_prev<cr>', { silent = true })
