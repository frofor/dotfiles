vim.keymap.set('n', '<leader>w', function() vim.cmd('w') end, { noremap = true })
vim.keymap.set('n', '<leader>q', function() vim.cmd('q') end, { noremap = true })
vim.keymap.set({ 'v', 'x' }, '>', function() vim.cmd('normal! >gv') end, { noremap = true })
vim.keymap.set({ 'v', 'x' }, '<', function() vim.cmd('normal! <gv') end, { noremap = true })
