vim.g.mapleader = vim.keycode('<space>')
vim.g.maplocalleader = vim.keycode('<space>')

vim.opt.mouse = ''
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.list = true
vim.opt.listchars = { space = '·', tab = '> ' }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.opt.winborder = 'single'

vim.schedule(function() vim.opt.clipboard = 'unnamedplus' end)

vim.api.nvim_create_autocmd('BufReadPost', {
	callback = function()
		if vim.fn.line('\'"') > 0 and vim.fn.line('\'"') <= vim.fn.line('$') then
			vim.cmd('normal! g`"')
		end
	end,
})
