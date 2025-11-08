---@type vim.lsp.Config
return {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml', 'Cargo.lock', '.git' },
    settings = {
        ['rust-analyzer'] = {
            assist = {
                emitMustUse = true,
                preferSelf = true,
            },
            cargo = {
                features = 'all',
            },
            check = {
                command = 'clippy',
                extraArgs = { '--', '-W', 'clippy::pedantic', '-W', 'clippy::cargo' },
                features = 'all',
            },
            completion = {
                postfix = {
                    enable = false,
                },
            },
            diagnostics = {
                experimental = {
                    enable = true,
                },
                styleLints = {
                    enable = true,
                },
            },
            imports = {
                granularity = {
                    group = 'item',
                },
                preferPrelude = true,
            },
            references = {
                excludeImports = true,
            },
            workspace = {
                symbol = {
                    search = {
                        excludeImports = true,
                    },
                },
            },
        },
    },
}
