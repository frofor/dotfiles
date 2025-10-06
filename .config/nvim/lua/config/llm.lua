local codeium = require('codeium')
codeium.setup({
	virtual_text = {
		enabled = true,
		accept_fallback = '<tab>',
		key_bindings = {
			accept = '<tab>',
			next = '<c-tab>',
			prev = '<c-s-tab>',
		},
	},
})
