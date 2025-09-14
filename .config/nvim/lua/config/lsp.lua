---@param lhs string
---@param rhs function
---@param bufnr integer
local function map(lhs, rhs, bufnr)
	vim.keymap.set('n', lhs, rhs, { buffer = bufnr, noremap = true })
end

vim.lsp.enable('bash')
vim.lsp.enable('java')
vim.lsp.enable('lua')
vim.lsp.enable('rust')
vim.lsp.enable('svelte')
vim.lsp.enable('typescript')

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local bufnr = args.buf
		map('<leader>F', vim.lsp.buf.format, bufnr)
		map('<leader>sh', vim.lsp.buf.signature_help, bufnr)
		map('<leader>rn', vim.lsp.buf.rename, bufnr)
		map('<leader>ca', vim.lsp.buf.code_action, bufnr)
	end,
})
