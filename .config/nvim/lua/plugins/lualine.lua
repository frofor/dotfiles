return {
	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			section_separators = { left = '', right = '' },
			component_separators = { left = '|', right = '|' },
		},
		sections = {
			lualine_x = { 'filetype' },
			lualine_y = {},
		},
	},
}
