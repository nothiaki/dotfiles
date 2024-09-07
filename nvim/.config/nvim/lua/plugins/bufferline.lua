return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      close_command = function(n) LazyVim.ui.bufremove(n) end,
      right_mouse_command = function(n) LazyVim.ui.bufremove(n) end,
      diagnostics = "nvim_lsp",
      always_show_bufferline = false,
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
    -- Fix bufferline when restoring a session
    vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })

    vim.keymap.set("n", "nb", "<cmd>BufferLineCycleNext<cr>", {})
    vim.keymap.set("n", "pb", "<cmd>BufferLineCyclePrev<cr>", {})
    vim.keymap.set("n", "<leader>bd", "<cmd>:bd<cr>", {})
  end,
}
