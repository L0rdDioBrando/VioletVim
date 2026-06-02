vim.pack.add {
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim",
  "https://github.com/brenoprata10/nvim-highlight-colors",
  "https://github.com/L3MON4D3/LuaSnip",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/saghen/blink.cmp"
}

local lspconfig = require("lspconfig")
require("luasnip.loaders.from_vscode").lazy_load()
local capabilities = require("blink.cmp").get_lsp_capabilities()

local lsp_defaults = lspconfig.util.default_config
lsp_defaults.capabilities = vim.tbl_deep_extend("force", lsp_defaults.capabilities, capabilities)

vim.lsp.enable("gopls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("jsonls")
vim.lsp.enable("cssls")
vim.lsp.enable("nixd")
vim.lsp.enable("kdl-ls")
