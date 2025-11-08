local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<tab>'] = cmp.mapping.select_next_item(),
        ['<s-tab>'] = cmp.mapping.select_prev_item(),
        ['<cr>'] = cmp.mapping.confirm({ select = true }),
        ['<esc>'] = cmp.mapping.abort(),
        ['<c-b>'] = cmp.mapping.scroll_docs(-1),
        ['<c-f>'] = cmp.mapping.scroll_docs(3),
    },
    formatting = {
        fields = { 'kind', 'abbr' },
        format = function(_, item)
            local exp_len = 30
            local cur_len = string.len(item.abbr)

            if cur_len < exp_len then
                item.abbr = item.abbr .. string.rep(' ', exp_len - cur_len)
            elseif cur_len > exp_len then
                item.abbr = vim.fn.strcharpart(item.abbr, 0, exp_len) .. '…'
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
