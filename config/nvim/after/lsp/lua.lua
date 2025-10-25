---@type vim.lsp.Config
return {
	cmd = { 'lua-language-server' },
	filetypes = { 'lua' },
	root_markers = { '.luarc.json', 'stylua.toml', '.git' },
	settings = {
		Lua = {
			workspace = { library = vim.api.nvim_get_runtime_file('', true) },
			diagnostics = { globals = { 'mp' } },
			telemetry = { enable = false },
		},
	},
}
