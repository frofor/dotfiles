---@type vim.lsp.Config
return {
    cmd = { vim.fn.stdpath('data') .. '/frofor/lsp/latex/target/release/texlab' },
    filetypes = { 'plaintex', 'tex' },
    root_markers = { '.git' },
}
