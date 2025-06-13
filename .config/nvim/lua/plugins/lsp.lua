return {
	'neovim/nvim-lspconfig',
	config = function()
		local lspconfig = require('lspconfig')
		lspconfig.bashls.setup(require('lsp.bash'))
		lspconfig.lua_ls.setup(require('lsp.lua'))
		lspconfig.rust_analyzer.setup(require('lsp.rust'))
		vim.lsp.enable({ 'bashls', 'lua_ls', 'rust_analyzer' })

		vim.api.nvim_create_autocmd('LspAttach', {
			callback = function(args)
				local bufnr = args.buf
				vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, { buffer = bufnr })
				vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, { buffer = bufnr })
				vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, { buffer = bufnr })
				vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>ci', function() vim.lsp.buf.incoming_calls() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>co', function() vim.lsp.buf.outgoing_calls() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>gf', function() vim.lsp.buf.format() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>gs', function() vim.lsp.buf.signature_help() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>do', function() vim.diagnostic.open_float() end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>dp', function() vim.diagnostic.jump({ count = 1, float = true }) end, { buffer = bufnr })
				vim.keymap.set('n', '<leader>dn', function() vim.diagnostic.jump({ count = -1, float = true }) end, { buffer = bufnr })
			end,
		})

		vim.diagnostic.config({
			virtual_text = {
				prefix = '● ',
			},
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = '',
					[vim.diagnostic.severity.WARN] = '',
					[vim.diagnostic.severity.INFO] = '',
					[vim.diagnostic.severity.HINT] = '󰌶',
				},
			},
			float = {
				source = true,
			},
			update_in_insert = true,
			severity_sort = true,
		})
	end,
}
