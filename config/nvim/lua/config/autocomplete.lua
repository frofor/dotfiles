local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<c-n>'] = cmp.mapping.select_next_item(),
        ['<c-p>'] = cmp.mapping.select_prev_item(),
        ['<cr>'] = cmp.mapping.confirm({ select = true }),
        ['<esc>'] = cmp.mapping.abort(),
        ['<c-u>'] = cmp.mapping.scroll_docs(-1),
        ['<c-d>'] = cmp.mapping.scroll_docs(3),
    },
    formatting = {
        fields = { 'kind', 'abbr' },
        format = function(_, item)
            local max_len = 30
            local len = string.len(item.abbr)
            if len > max_len then
                item.abbr = vim.fn.strcharpart(item.abbr, 0, max_len) .. '…'
            end

            item.kind = ({
                Text = "",
                Method = "󰊕",
                Function = "󰊕",
                Constructor = "",
                Field = "",
                Variable = "󰀫",
                Class = "",
                Interface = "",
                Module = "",
                Property = "",
                Unit = "",
                Value = "",
                Enum = "",
                Keyword = "",
                Snippet = "󱄽",
                Color = "",
                File = "",
                Reference = "",
                Folder = "",
                EnumMember = "",
                Constant = "󰏿",
                Struct = "󰆼",
                Event = "",
                Operator = "",
                TypeParameter = "",
            })[item.kind]

            return item
        end,
    },
    sources = {
        { name = 'nvim_lsp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
    },
})
