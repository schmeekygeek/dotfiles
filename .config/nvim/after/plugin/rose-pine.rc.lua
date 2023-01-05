local status, rosepine = pcall(require, 'rose-pine')

rosepine.setup({
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = true,

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' }
	},
})
vim.cmd("colorscheme rose-pine")
