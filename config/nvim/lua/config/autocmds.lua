local function jump_last_position()
    if vim.fn.line('\'"') > 0 and vim.fn.line('\'"') <= vim.fn.line('$') then
        vim.cmd('normal! g`"')
    end
end

vim.api.nvim_create_autocmd('BufReadPost', { callback = jump_last_position })
