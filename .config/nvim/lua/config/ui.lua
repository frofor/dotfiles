local noice = require('noice')
noice.setup({
	cmdline = {
		format = {
			cmdline = { icon = ':' },
			search_down = { icon = '/' },
			search_up = { icon = '?' },
			filter = { icon = ':!' },
			lua = { icon = ':lua' },
			help = { icon = ':h' },
			input = { icon = '>' },
		},
	},
	lsp = {
		override = {
			['vim.lsp.util.convert_input_to_markdown_lines'] = true,
			['vim.lsp.util.stylize_markdown'] = true,
			['cmp.entry.get_documentation'] = true,
		},
	},
	views = {
		cmdline_popup = {
			border = {
				style = 'none',
			},
		},
		hover = {
			border = {
				padding = { 0, 0 },
				style = 'none',
			},
			position = { row = 1, col = 0 },
			scrollbar = false,
		},
	},
	presets = {
		command_palette = true,
		lsp_doc_border = true,
	},
})
