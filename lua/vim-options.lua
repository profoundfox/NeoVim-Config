vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true

vim.opt.hlsearch = true

vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<CR>", "<cmd>nohlsearch<CR>")

vim.cmd("set clipboard=unnamedplus")

vim.g.mapleader = " "
