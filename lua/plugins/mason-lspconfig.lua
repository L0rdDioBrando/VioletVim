vim.schedule(function()
  vim.pack.add {
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/neovim/nvim-lspconfig"
  }
  require("mason-lspconfig").setup({
    automatic_enable = {
      "gopls",
      "lua_ls",
      "jsonls",
      "cssls",
    },
  })
end)
