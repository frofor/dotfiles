vim.lsp.enable('lua')
vim.lsp.enable('bash')
vim.lsp.enable('rust')
vim.lsp.enable('typescript')
vim.lsp.enable('svelte')

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local bufnr = args.buf
		vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end, { buffer = bufnr })
		vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, { buffer = bufnr })
		vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, { buffer = bufnr })
		vim.keymap.set('n', '<leader>sh', function() vim.lsp.buf.signature_help() end, { buffer = bufnr })
	end,
})
