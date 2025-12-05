local trouble = require('trouble')
trouble.setup({})

vim.diagnostic.config({
    virtual_text = { spacing = 4 },
    signs = true,
    update_in_insert = false,
})
