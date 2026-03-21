return {
  "neovim/nvim-lspconfig",
  dependencies = {
  "mason-org/mason.nvim",
  "mason-org/mason-lspconfig.nvim",
  "hrsh7th/cmp-nvim-lsp",
  },
  vim.lsp.enable('gopls'),
  vim.lsp.enable('lua_ls')
}