---@type vim.lsp.Config
return {
	settings = {
		['rust-analyzer'] = {
			cargo = {
				allFeatures = true,
			},
			procMacro = {
				enable = true,
			},
		},
	},
}
