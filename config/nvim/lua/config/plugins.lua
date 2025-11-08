local path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(path) then
    vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', 'https://github.com/folke/lazy.nvim', path })
end
vim.opt.runtimepath:prepend(path)

require('lazy').setup({
    require('plugins.autocomplete'),
    require('plugins.cargo'),
    require('plugins.colorscheme'),
    require('plugins.diagnostics'),
    require('plugins.git'),
    require('plugins.llm'),
    require('plugins.picker'),
    require('plugins.statusline'),
    require('plugins.syntax'),
})
