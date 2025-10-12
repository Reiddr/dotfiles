vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorlineopt = 'line'
vim.opt.path = vim.opt.path + "**"
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>m', ':!ctags -R<CR><CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>s', ':so<CR>', {noremap = true, silent = true})

