local gitsigns = require('gitsigns')
gitsigns.setup({
    current_line_blame = true,
})

local map = vim.keymap.set
map('n', '<leader>g[', function() gitsigns.nav_hunk('prev') end)
map('n', '<leader>g]', function() gitsigns.nav_hunk('next') end)
map('n', '<leader>gd', gitsigns.diffthis)
map('n', '<leader>gw', gitsigns.toggle_word_diff)
map('n', '<leader>gb', gitsigns.blame_line)
map('n', '<leader>gB', gitsigns.blame)
map('n', '<leader>gp', gitsigns.preview_hunk_inline)
map('n', '<leader>gq', gitsigns.setqflist)
map('n', '<leader>gQ', function() gitsigns.setqflist('all') end)
