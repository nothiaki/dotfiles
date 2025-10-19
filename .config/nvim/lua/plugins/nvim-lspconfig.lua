return {
  -- LSP Support
  'neovim/nvim-lspconfig',
  event = 'VeryLazy',
  dependencies = {
    -- LSP Manager Plugins
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Useful status updates for LSP
    { 'j-hui/fidget.nvim', opts = {} },

    -- Additional lua configuration, makes nvim stuff amazing!
    {'folke/neodev.nvim' },
  },
  config = function ()
    require('mason').setup()
    
    local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lsp_attach = function(client, bufnr)
      -- Create your keybindings here...
    end

    require('mason-lspconfig').setup({
      -- Update this list to the language servers you need installed
      ensure_installed = {
        "html",
        "tailwindcss",
        "ts_ls",
        "gopls",
        "yamlls",
      },
    })
  end
}
