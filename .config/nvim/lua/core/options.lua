local opt = vim.opt

-- Session Management
opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
vim.bo.softtabstop = 2

-- Line Wrapping
opt.wrap = false

-- Search Settings
opt.smartcase = true

-- Cursor Line
-- opt.cursorline = true

-- Curosr Style
vim.o.guicursor = "n-v-i-c:block-Cursor"

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showmode = false
vim.diagnostic.config {
  float = { border = "rounded" }, -- add border to diagnostic popups
}

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split Windows
-- opt.splitright = true
-- opt.splitbelow = true

-- Consider - as part of keyword
opt.iskeyword:append("-")

-- Disable the mouse while in nvim
opt.mouse = ""

-- Folding
opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()" -- Utilize Treesitter folds


-- vim.o.showmode = false
-- vim.o.number = true
-- vim.o.swapfile = false
--
-- vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float)
-- vim.keymap.set("n", "pd", vim.diagnostic.goto_prev)
-- vim.keymap.set("n", "nd", vim.diagnostic.goto_next)
--
-- vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>")
--
-- vim.api.nvim_create_autocmd("CursorMoved", {
--   pattern = "*",
--   callback = function()
--     if vim.fn.hlexists("Search") == 1 then
--       vim.cmd("nohlsearch")
--     end
--   end,
-- })
