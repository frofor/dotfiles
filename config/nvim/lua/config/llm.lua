local supermaven = require('supermaven-nvim')
supermaven.setup({
    keymaps = {
        accept_word = '<C-,>',
        accept_suggestion = '<C-.>',
    },
})
