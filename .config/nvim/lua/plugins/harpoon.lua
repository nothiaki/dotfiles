return {
  "ThePrimeagen/harpoon",
  lazy = false,
  config = function()
    vim.keymap.set("n", "<leader>hx", "<cmd>lua require('harpoon.mark').add_file()<cr>", {})
    vim.keymap.set("n", "<leader>hf", "<cmd>lua require('telescope').extensions.harpoon.marks{}<cr>")
    vim.keymap.set("n", "nh", "<cmd>lua require('harpoon.ui').nav_next()<cr>", {})
    vim.keymap.set("n", "ph", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", {})
    vim.keymap.set("n", "<leader>hd", "<cmd>lua require('harpoon.mark').rm_file()<cr>", {})
  end,
}
