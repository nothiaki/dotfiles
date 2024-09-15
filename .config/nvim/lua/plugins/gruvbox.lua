return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    vim.cmd([[
      colorscheme gruvbox
      hi SignColumn guibg=#282828
      hi DiagnosticSignError guibg=#282828
      hi DiagnosticSignWarn guibg=#282828
      hi DiagnosticSignInfo guibg=#282828
      hi DiagnosticSignHint guibg=#282828
    ]])
  end,
}
