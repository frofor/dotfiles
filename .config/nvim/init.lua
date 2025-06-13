require('opt')

local path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(path) then
	vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', 'https://github.com/folke/lazy.nvim', path })
end
vim.opt.runtimepath:prepend(path)

require('lazy').setup({
	require('plugins.theme'),
	require('plugins.cmp'),
	require('plugins.lsp'),
})
