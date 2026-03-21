return {
  "mason-org/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      automatic_enable = {
          "gopls",
          "lua_ls"
      },
    })
end,
}