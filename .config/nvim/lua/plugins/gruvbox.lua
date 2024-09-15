return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    vim.cmd([[
      colorscheme gruvbox
      hi SignColumn guibg=#282828
    ]])
  end,
}
