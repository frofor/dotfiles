vim.g.mapleader = vim.keycode('<space>')
vim.g.maplocalleader = vim.keycode('<space>')

vim.opt.mouse = ''
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '100'
vim.opt.signcolumn = 'yes'
vim.opt.guicursor = ''
vim.opt.list = true
vim.opt.listchars = { space = '·', tab = '> ' }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.opt.winborder = 'single'
vim.schedule(function() vim.opt.clipboard = 'unnamedplus' end)
