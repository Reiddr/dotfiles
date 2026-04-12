-- Options
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.inccommand = "split"
vim.o.cursorline = true
vim.opt.cursorlineopt = "line"
vim.o.scrolloff = 12
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.confirm = true
vim.o.conceallevel = 1
vim.opt.path = vim.opt.path + "**"


-- Remaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>pu", ":lua vim.pack.update()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>r", ":restart<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<leader>ff", ":find ")
vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Autocommands
-- vim.cmd("command! -nargs=1 -complete=help H :enew | set buftype=help | :h <args>")
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Plugins
vim.pack.add({'https://github.com/folke/tokyonight.nvim'})
require('tokyonight').setup({
  style = 'night',
})
vim.cmd.colorscheme('tokyonight-night')

vim.pack.add({'https://github.com/folke/which-key.nvim'})
require('which-key').setup()

vim.cmd('packadd nvim.undotree')

vim.pack.add({'https://github.com/nvim-treesitter/nvim-treesitter'})
require('nvim-treesitter').install({ 'python',}):wait(300000) -- wait max. 5 minutes

vim.pack.add({'https://github.com/neovim/nvim-lspconfig'})
vim.lsp.enable('pyright')
vim.lsp.enable('lua_ls')
vim.lsp.enable('clang')
