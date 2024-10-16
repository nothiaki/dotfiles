vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set signcolumn=yes")
vim.cmd("set guicursor=n-v-i-c:block-Cursor")
vim.cmd("syntax enable")

vim.o.showmode = false
vim.g.mapleader = " "
vim.wo.number = true
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>df", ":lua vim.diagnostic.open_float()<CR>")
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>")
