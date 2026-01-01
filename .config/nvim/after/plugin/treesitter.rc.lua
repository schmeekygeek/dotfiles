local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end
ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {'dart'},
  },
  ensure_installed = {
    'tsx',
    'typescript',
    'lua',
    'json',
    'css',
    'java',
    'dart',
  }
}
