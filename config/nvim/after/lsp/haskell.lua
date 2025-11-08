---@type vim.lsp.Config
return {
    cmd = { 'haskell-language-server-wrapper', '--lsp' },
    filetypes = { 'haskell', 'cabal' },
    root_markers = { '.git' },
}
