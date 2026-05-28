vim.pack.add { "https://github.com/stevearc/conform.nvim" }
require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt" },
    python = { "isort", "black" },
    nix = { "nixpkgs-fmt" },
    rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    json = { "jq" },
    jsonc = { "jq" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
