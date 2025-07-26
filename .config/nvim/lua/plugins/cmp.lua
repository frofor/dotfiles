return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		{ 'hrsh7th/cmp-nvim-lsp' },
		{ 'hrsh7th/cmp-buffer' },
		{ 'hrsh7th/cmp-path' },
	},
	config = function()
		local cmp = require('cmp')
		cmp.setup({
			sources = {
				{
					name = 'nvim_lsp',
					entry_filter = function(entry, _)
						return cmp.lsp.CompletionItemKind.Snippet ~= entry:get_kind()
					end,
				},
				{ 'hrsh7th/cmp-buffer' },
				{ 'hrsh7th/cmp-path' },
			},
			mapping = {
				['<Tab>'] = cmp.mapping.select_next_item(),
				['<S-Tab>'] = cmp.mapping.select_prev_item(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
				['<Esc>'] = cmp.mapping.abort(),
				['<C-b>'] = cmp.mapping.scroll_docs(-1),
				['<C-f>'] = cmp.mapping.scroll_docs(3),
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
		})
	end,
}
