---@param mode string|string[]
---@param lhs string
---@param rhs function
local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { noremap = true })
end

map('n', '<leader>w', function() vim.cmd('w') end)
map('n', '<leader>q', function() vim.cmd('q') end)
map({ 'v', 'x' }, '>', function() vim.cmd('normal! >gv') end)
map({ 'v', 'x' }, '<', function() vim.cmd('normal! <gv') end)
