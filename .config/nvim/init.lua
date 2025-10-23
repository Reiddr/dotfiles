vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorlineopt = 'line'
vim.opt.path = vim.opt.path + "**"
vim.opt.termguicolors = true

vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>m', ':!ctags -R<CR><CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>r', ':source ~/.config/nvim/init.lua<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ls', ':buffers<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>lf', ':b ', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>la', ':e #<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ff', ':find ', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fd', ':Ex<CR>', {noremap = true, silent = true})

