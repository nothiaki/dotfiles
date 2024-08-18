vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set signcolumn=yes")
vim.o.showmode = false
vim.g.mapleader = " "

vim.opt.swapfile = false
vim.wo.number = true

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>nh', ':nohlsearch<CR>')

vim.cmd([[
  augroup TelescopeColors
    autocmd!
    autocmd ColorScheme * highlight TelescopePromptBorder guifg=#27a1b9 guibg=#16161e
    autocmd ColorScheme * highlight TelescopePromptTitle guifg=#27a1b9 guibg=#16161e
  augroup END
]])
