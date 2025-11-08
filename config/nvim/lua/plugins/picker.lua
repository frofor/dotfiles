return {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
        picker = {
            matcher = {
                cwd_bonus = true,
                frecency = true,
                history_bonus = true,
            },
            icons = {
                files = {
                    dir = '',
                    dir_open = '',
                    file = '',
                },
                git = {
                    commit = 'C',
                    staged = 'S',
                    added = 'A',
                    deleted = 'D',
                    ignored = 'I',
                    modified = 'M',
                    renamed = 'R',
                    unmerged = 'U',
                    untracked = '?',
                },
            },
            sources = {
                explorer = {
                    auto_close = true,
                    layout = {
                        preview = true,
                        preset = function()
                            return vim.o.columns >= 80 and 'default' or 'vertical'
                        end,
                    },
                },
            },
            layout = {
                preset = function()
                    return vim.o.columns >= 80 and 'default' or 'vertical'
                end,
            },
            layouts = {
                default = {
                    layout = {
                        box = 'horizontal',
                        {
                            box = 'vertical',
                            width = 0.4,
                            title = '{title} {live} {flags}',
                            border = 'solid',
                            {
                                win = 'input',
                                height = 1,
                            },
                            {
                                win = 'list',
                            },
                        },
                        {
                            win = 'preview',
                            title = '{preview}',
                            border = 'solid',
                        },
                    },
                },
                vertical = {
                    layout = {
                        box = 'vertical',
                        {
                            box = 'vertical',
                            height = 0.6,
                            title = '{title} {live} {flags}',
                            border = 'solid',
                            {
                                win = 'input',
                                height = 1,
                            },
                            {
                                win = 'list',
                            },
                        },
                        {
                            win = 'preview',
                            title = '{preview}',
                            border = 'solid',
                        },
                    },
                },
            },
        },
    },
    keys = {
        { '<leader>e', function() Snacks.explorer() end },
        { '<leader>t', function() Snacks.terminal() end },
        { '<leader>.', function() Snacks.scratch() end },
        { '<leader>ff', function() Snacks.picker.files() end },
        { '<leader>fr', function() Snacks.picker.recent() end },
        { '<leader>fc', function() Snacks.picker.files({ cwd = vim.fn.stdpath('config') }) end },
        { '<leader>/', function() Snacks.picker.grep() end },
        { '<leader>ss', function() Snacks.picker.lsp_symbols() end },
        { '<leader>sS', function() Snacks.picker.lsp_workspace_symbols() end },
        { 'gd', function() Snacks.picker.lsp_definitions() end },
        { 'gD', function() Snacks.picker.lsp_declarations() end },
        { 'gy', function() Snacks.picker.lsp_type_definitions() end },
        { 'gr', function() Snacks.picker.lsp_references() end },
        { 'gi', function() Snacks.picker.lsp_implementations() end },
    },
}
