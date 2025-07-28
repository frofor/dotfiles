local gitsigns = require('gitsigns')
gitsigns.setup({})

vim.keymap.set('n', '<leader>gd', gitsigns.diffthis)
vim.keymap.set('n', '<leader>gb', gitsigns.blame_line)
vim.keymap.set('n', '<leader>gB', gitsigns.blame)
vim.keymap.set('n', '<leader>go', gitsigns.preview_hunk)
vim.keymap.set('n', '<leader>g[', function() gitsigns.nav_hunk('prev') end)
vim.keymap.set('n', '<leader>g]', function() gitsigns.nav_hunk('next') end)
