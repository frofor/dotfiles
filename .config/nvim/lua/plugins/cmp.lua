return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		{ 'hrsh7th/cmp-nvim-lsp' },
		{ 'hrsh7th/cmp-buffer' },
		{ 'hrsh7th/cmp-path' },
		{ 'hrsh7th/cmp-cmdline' },
	},
	opts = function()
		local cmp = require('cmp')
		cmp.setup({
			sources = {
				{ name = 'nvim_lsp' },
				{ name = 'buffer' },
				{ name = 'path' },
			},
			mapping = {
				['<Tab>'] = cmp.mapping.select_next_item(),
				['<S-Tab>'] = cmp.mapping.select_prev_item(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
				['<Esc>'] = cmp.mapping.abort(),
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
		})
		cmp.setup.cmdline('/', {
			sources = {
				{ name = 'buffer' },
			},
			mapping = cmp.mapping.preset.cmdline(),
		})
		cmp.setup.cmdline(':', {
			sources = {
				{ name = 'path' },
				{ name = 'cmdline' },
			},
			mapping = cmp.mapping.preset.cmdline(),
		})
	end,
}
