---@type vim.lsp.Config
return {
	cmd = { 'jdtls' },
	filetypes = { 'java' },
	root_markers = { 'gradle.build', 'pom.xml', '.git' },
}
