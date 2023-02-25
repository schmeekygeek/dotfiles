local status, leap = pcall(require, 'leap')
if (not status) then return end

local keymap = vim.keymap
keymap.set('n', 'f', '<Plug>(leap-forward)', {})
keymap.set('n', 'F', '<Plug>(leap-backward)', {})
-- leap.add_default_mappings()
