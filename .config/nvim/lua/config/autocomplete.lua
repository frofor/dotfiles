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
		['<tab>'] = cmp.mapping.select_next_item(),
		['<s-tab>'] = cmp.mapping.select_prev_item(),
		['<cr>'] = cmp.mapping.confirm({ select = true }),
		['<esc>'] = cmp.mapping.abort(),
		['<c-b>'] = cmp.mapping.scroll_docs(-1),
		['<c-f>'] = cmp.mapping.scroll_docs(3),
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
})
