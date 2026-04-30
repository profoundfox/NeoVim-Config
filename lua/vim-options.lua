vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true

vim.opt.hlsearch = true

vim.o.winborder = "rounded"

vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<CR>", "<cmd>nohlsearch<CR>")

vim.api.nvim_create_user_command("Wa", function(opts)
  vim.cmd("wa" .. (opts.bang and "!" or ""))
end, { bang = true })

vim.api.nvim_create_user_command("Qa", function(opts)
  vim.cmd("qa" .. (opts.bang and "!" or ""))
end, { bang = true })

vim.cmd("set clipboard=unnamedplus")

vim.g.mapleader = " "
