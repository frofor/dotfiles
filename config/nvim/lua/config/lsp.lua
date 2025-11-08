local function install_latex_lsp()
    local root = vim.fn.stdpath('data') .. '/frofor/lsp/latex'
    if not vim.uv.fs_stat(root) then
        vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/latex-lsp/texlab.git', root })
        vim.fn.system({ 'cargo', 'b', '-r', '--manifest-path', root .. '/Cargo.toml' })
    end
    vim.lsp.enable('latex')
end

---@param lhs string
---@param rhs function
---@param bufnr integer
local function map(lhs, rhs, bufnr)
    vim.keymap.set('n', lhs, rhs, { buffer = bufnr, noremap = true })
end

install_latex_lsp()

vim.lsp.enable('bash')
vim.lsp.enable('java')
vim.lsp.enable('haskell')
vim.lsp.enable('lua')
vim.lsp.enable('rust')
vim.lsp.enable('svelte')
vim.lsp.enable('typescript')

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        map('<leader>F', vim.lsp.buf.format, args.buf)
        map('<leader>sh', vim.lsp.buf.signature_help, args.buf)
        map('<leader>rn', vim.lsp.buf.rename, args.buf)
        map('<leader>ca', vim.lsp.buf.code_action, args.buf)
    end,
})
