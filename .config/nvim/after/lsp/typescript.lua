---@type vim.lsp.Config
return {
	cmd = { 'typescript-language-server', '--stdio' },
	filetypes = { 'typescript' },
	root_markers = { 'package.json', '.git' },
}
