local status, lspsaga = pcall(require, "lspsaga")
local keymap = vim.keymap
if (not status) then return end

lspsaga.setup({
  lightbulb = {
    enable = false,
    enable_in_insert = true,
    sign = false,
    sign_priority = 40,
    virtual_text = false,
  },
});
