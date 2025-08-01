-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>") -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>") -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- open URL under cursor

-- Split window management
-- keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
-- keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
-- keymap.set("n", "<leader>sj", "<C-w>-") -- make split window height shorter
-- keymap.set("n", "<leader>sk", "<C-w>+") -- make split windows height taller
-- keymap.set("n", "<leader>sl", "<C-w>>5") -- make split windows width bigger 
-- keymap.set("n", "<leader>sh", "<C-w><5") -- make split windows width smaller

-- Neo-tree
keymap.set("n", "<leader>e", "<cmd>Neotree toggle right<CR>")

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {}) -- fuzzy find files in project
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {}) -- grep file contents in project
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {}) -- fuzzy find open buffers
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {}) -- fuzzy find help tags
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, {}) -- fuzzy find in current file buffer
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, {}) -- fuzzy find LSP/class symbols
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, {}) -- fuzzy find LSP/incoming calls
-- keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({default_text=":method:"}) end) -- fuzzy find methods in current class
keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({symbols={'function', 'method'}}) end) -- fuzzy find methods in current class
keymap.set('n', '<leader>ft', function() -- grep file contents in current nvim-tree node
  local success, node = pcall(function() return require('nvim-tree.lib').get_node_at_cursor() end)
  if not success or not node then return end;
  require('telescope.builtin').live_grep({search_dirs = {node.absolute_path}})
end)

-- Harpoon
-- keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
-- keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu)
-- keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end)
-- keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end)
-- keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end)
-- keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end)
-- keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end)
-- keymap.set("n", "<leader>h6", function() require("harpoon.ui").nav_file(6) end)
-- keymap.set("n", "<leader>h7", function() require("harpoon.ui").nav_file(7) end)
-- keymap.set("n", "<leader>h8", function() require("harpoon.ui").nav_file(8) end)
-- keymap.set("n", "<leader>h9", function() require("harpoon.ui").nav_file(9) end)

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')

