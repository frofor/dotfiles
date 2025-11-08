---@param lhs string
---@param rhs function
local function map(lhs, rhs)
    vim.keymap.set('n', lhs, rhs, { noremap = true })
end

local gitsigns = require('gitsigns')
gitsigns.setup({
    current_line_blame = true,
})

map('<leader>g[', function() gitsigns.nav_hunk('prev') end)
map('<leader>g]', function() gitsigns.nav_hunk('next') end)
map('<leader>gd', gitsigns.diffthis)
map('<leader>gw', gitsigns.toggle_word_diff)
map('<leader>gb', gitsigns.blame_line)
map('<leader>gB', gitsigns.blame)
map('<leader>gp', gitsigns.preview_hunk_inline)
map('<leader>gq', gitsigns.setqflist)
map('<leader>gQ', function() gitsigns.setqflist('all') end)
