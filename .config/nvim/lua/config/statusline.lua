local function macro_recording()
	return '@' .. vim.fn.reg_recording()
end

local lualine = require('lualine')
lualine.setup({
	options = {
		section_separators = { left = '', right = '' },
		component_separators = { left = '|', right = '|' },
	},
	sections = {
		lualine_x = {
			'filetype',
			{ macro_recording, cond = function() return vim.fn.reg_recording() ~= '' end },
		},
		lualine_y = {},
	},
})
