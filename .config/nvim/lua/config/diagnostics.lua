local function open_diagnostics()
	vim.diagnostic.open_float()
end

local function jump_prev_diagnostic()
	vim.diagnostic.jump({ count = -1 })
end

local function jump_next_diagnostic()
	vim.diagnostic.jump({ count = 1 })
end

local function toggle_trouble_diagnostics()
	vim.cmd('Trouble diagnostics toggle')
end

local function toggle_trouble_diagnostics_buf()
	vim.cmd('Trouble diagnostics toggle filter.buf=0')
end

local trouble = require('trouble')
trouble.setup({})

vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
	},
	signs = true,
	update_in_insert = false,
})

vim.keymap.set('n', '<leader>do', open_diagnostics, { noremap = true })
vim.keymap.set('n', '<leader>dp', jump_prev_diagnostic, { noremap = true })
vim.keymap.set('n', '<leader>dn', jump_next_diagnostic, { noremap = true })
vim.keymap.set('n', '<leader>da', toggle_trouble_diagnostics, { noremap = true })
vim.keymap.set('n', '<leader>db', toggle_trouble_diagnostics_buf, { noremap = true })
