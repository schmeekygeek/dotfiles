local status, treesj = pcall(require, 'treesj')
if (not status) then return end

treesj.setup(
  {
    use_default_keymaps = false,
    check_syntax_error = ttrue,
    max_join_length = 200,
    cursor_behavior = 'hold',
    notify = true,
    dot_repeat = true,
  }
)


local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set('n', 'st', function() treesj.toggle() end, opts)
keymap.set('n', 'sp', function() treesj.split() end, opts)
keymap.set('n', 'sj', function() treesj.join() end, opts)
