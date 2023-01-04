vim.cmd('autocmd!')
vim.opt.fileencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'bash'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true --Auto indent
vim.opt.si = true --Smart indent
vim.opt.wrap = false
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\[4:3m"]])
vim.cmd([[let &t_Ce = "\[4:0m"]])

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = '*',
	command = "set nopaste",
});

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
