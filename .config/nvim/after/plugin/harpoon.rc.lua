local uistatus, harpoonui = pcall(require, 'harpoon.ui')
local markstatus, harpoonmark = pcall(require, 'harpoon.mark')

if (not uistatus and not markstatus) then return end

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
keymap.set('n', 'm', function() harpoonmark.add_file() end, opts)
keymap.set('n', ',', function() harpoonui.nav_prev() end, opts)
keymap.set('n', '.', function() harpoonui.nav_next() end, opts)
keymap.set('n', 'M', function() harpoonui.toggle_quick_menu() end, opts)
