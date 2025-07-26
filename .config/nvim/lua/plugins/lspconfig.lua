return {
	'neovim/nvim-lspconfig',
	config = function()
		local lspconfig = require('lspconfig')
		lspconfig.bashls.setup(require('lsp.bash'))
		lspconfig.lua_ls.setup(require('lsp.lua'))
		lspconfig.rust_analyzer.setup(require('lsp.rust'))
		lspconfig.ts_ls.setup(require('lsp.typescript'))
		lspconfig.svelte.setup(require('lsp.svelte'))

		vim.api.nvim_create_autocmd('LspAttach', {
			callback = function(args)
				local bufnr = args.buf
				vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>sh', function() vim.lsp.buf.signature_help() end, { buffer = bufnr })
			end,
		})
	end,
}
