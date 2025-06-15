vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorlineopt = 'line'
vim.opt.path = vim.opt.path + "**"
vim.keymap.set('n', '<leader>m', ':!ctags -R<CR><CR>')
