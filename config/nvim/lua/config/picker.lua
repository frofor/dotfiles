local function layout_preset()
    return vim.o.columns >= 80 and 'default' or 'vertical'
end

local snacks = require('snacks')
snacks.setup({
    picker = {
        matcher = {
            frecency = true,
            cwd_bonus = true,
            history_bonus = true,
        },
        icons = {
            files = {
                file = '',
                dir = '',
                dir_open = '',
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
                hidden = true,
                ignored = true,
                layout = {
                    preview = true,
                    preset = layout_preset,
                },
            },
        },
        layout = {
            preset = layout_preset,
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
                        { win = 'input', height = 1 },
                        { win = 'list' },
                    },
                    { win = 'preview', title = '{preview}', border = 'solid' },
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
                        { win = 'input', height = 1 },
                        { win = 'list' },
                    },
                    { win = 'preview', title = '{preview}', border = 'solid' },
                },
            },
        },
    },
    explorer = {
        enabled = true,
    },
})
