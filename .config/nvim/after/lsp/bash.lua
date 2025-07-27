---@type vim.lsp.Config
return {
	cmd = { 'bash-language-server', 'start' },
	filetypes = { 'bash' },
	root_markers = { '.git' },
}
