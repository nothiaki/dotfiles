vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.guicursor = "n-v-i-c:block-Cursor"
vim.o.syntax = "enable"
vim.o.showmode = false
vim.o.number = true
vim.o.swapfile = false
vim.o.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>")

vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float)
vim.keymap.set("n", "pd", vim.diagnostic.goto_prev)
vim.keymap.set("n", "nd", vim.diagnostic.goto_next)

vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>")

vim.api.nvim_create_autocmd("CursorMoved", {
  pattern = "*",
  callback = function()
    if vim.fn.hlexists("Search") == 1 then
      vim.cmd("nohlsearch")
    end
  end,
})
