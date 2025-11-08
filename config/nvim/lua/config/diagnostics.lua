---@param lhs string
---@param rhs function
local function map(lhs, rhs)
    vim.keymap.set('n', lhs, rhs, { noremap = true })
end

local trouble = require('trouble')
trouble.setup({})

vim.diagnostic.config({
    virtual_text = { spacing = 4 },
    signs = true,
    update_in_insert = false,
})

map('<leader>do', vim.diagnostic.open_float)
map('<leader>d[', function() vim.diagnostic.jump({ count = -1 }) end)
map('<leader>d]', function() vim.diagnostic.jump({ count = 1 }) end)
map('<leader>dt', function() vim.cmd('Trouble diagnostics toggle filter.buf=0') end)
map('<leader>dT', function() vim.cmd('Trouble diagnostics toggle') end)
