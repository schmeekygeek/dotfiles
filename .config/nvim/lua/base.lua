vim.wo.relativenumber = true
vim.wo.number = true

opt = vim.opt
opt.fileencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.title = true
opt.autoindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'bash'
opt.backupskip = '/tmp/*,/private/tmp/*'
opt.inccommand = 'split'
opt.ignorecase = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.ai = true --Auto indent
opt.si = true --Smart indent
opt.wrap = false
opt.backspace = 'start,eol,indent'
opt.path:append { '**' } -- finding files - Search down into subfolders
opt.guicursor = "n-v-i-c:block"
opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\[4:3m"]])
vim.cmd([[let &t_Ce = "\[4:0m"]])

-- vim.api.nvim_create_autocmd("InsertLeave", {
-- 	pattern = '*',
-- 	command = "set nopaste",
-- });

-- Add asterisks in block comments
opt.formatoptions:append { 'r' }

-- File specific tabstops and shiftwidths
-- java
vim.cmd 'autocmd FileType java setlocal shiftwidth=4 tabstop=4'

-- go
vim.cmd 'autocmd FileType go setlocal shiftwidth=2 tabstop=2'

-- typescript and tsx
vim.cmd 'autocmd FileType typescript,typescriptreact setlocal shiftwidth=4 tabstop=4 softtabstop=4'

-- Disable mouse
vim.api.nvim_set_option('mouse', '')

-- set transparency to completion menu
vim.api.nvim_set_option('pumblend', 0)

vim.g.gruvbox_contrast_dark="hard"
