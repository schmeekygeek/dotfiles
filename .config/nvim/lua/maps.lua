local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

--Split Windows
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '+', '<C-w>>')
keymap.set('n', '-', '<C-w><')

-- Ctrl backspace
keymap.set('i', '<C-BS>', '<C-w>', { noremap = true })
keymap.set('i', '<C-h>', '<C-w>', { noremap = true })

-- Nvim tree
keymap.set('n', 'e', ':NvimTreeOpen<cr>', { silent = true })

-- Buffers
keymap.set('n', 'X', ':bdelete<Return>', { silent = true })

-- Lspsaga maps
keymap.set('n', 'ca', '<Cmd>Lspsaga code_action<cr>', { silent = true })
keymap.set('n', 'gh', '<Cmd>Lspsaga hover_doc<cr>', { silent = true })
keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<cr>', { silent = true })
keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', { silent = true })
keymap.set('n', 'go', '<Cmd>Lspsaga show_line_diagnostics<cr>', { silent = true })
keymap.set('n', 'gj', '<Cmd>Lspsaga diagnostic_jump_next<cr>', { silent = true })
keymap.set('n', 'gk', '<Cmd>Lspsaga diagnostic_jump_prev<cr>', { silent = true })
