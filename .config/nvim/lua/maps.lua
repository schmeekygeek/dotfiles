local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Git blame
keymap.set('n', 'gb', ':GitBlameToggle<Return>', opts)

-- Do not yank with x, d and p
keymap.set('n', 'x', '"0x', opts)
keymap.set('n', 'd', '"_d', opts)

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

--Split Windows
keymap.set('n', 'ss', ':split<Return><C-w>w', opts)
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', opts)

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
keymap.set('i', '<C-BS>', '<C-w>', opts)
keymap.set('i', '<C-h>', '<C-w>', opts)

-- Buffers
keymap.set('n', 'X', ':bdelete<Return>', opts)

-- Neovim Lsp
local vb = vim.lsp.buf
local vd = vim.diagnostic

keymap.set('n', 'gD', function() vb.declaration() end, opts)
keymap.set('n', 'gi', function() vb.implementation() end, opts)
keymap.set('n', 'gd', function() vb.definition() end, opts)
keymap.set('n', 'ga', function() vb.code_action() end, opts)
keymap.set('n', 'gh', function() vb.hover() end, opts)
keymap.set('n', 'gr', function() vb.references() end, opts)
keymap.set('n', 'gR', function() vb.rename() end, opts)
keymap.set('n', 'go', function() vd.open_float() end, opts)
keymap.set('n', 'gj', function() vd.goto_next() end, opts)
keymap.set('n', 'gk', function() vd.goto_prev() end, opts)

-- Flutter
keymap.set('n', 'gc', ':FlutterLogClear<cr>', opts)
keymap.set('n', 'gt', ':FlutterOutlineToggle<cr>', opts)

-- Move lines up or down
keymap.set('v', 'K', ':m \'<-2<cr>=\'[gv', opts)
keymap.set('v', 'J', ':m \'>+1<cr>=\'[gv', opts)
