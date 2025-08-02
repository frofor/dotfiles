---@param lhs string
---@param rhs function
local function map(lhs, rhs)
	vim.keymap.set('n', lhs, rhs, { noremap = true })
end

local gitsigns = require('gitsigns')
gitsigns.setup({})

map('<leader>gd', gitsigns.diffthis)
map('<leader>gb', gitsigns.blame_line)
map('<leader>gB', gitsigns.blame)
map('<leader>go', gitsigns.preview_hunk)
map('<leader>g[', function() gitsigns.nav_hunk('prev') end)
map('<leader>g]', function() gitsigns.nav_hunk('next') end)
