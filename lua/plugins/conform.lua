vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt" },
    python = { "isort" },
    nix = { "nix-fmt" },
    json = { "jq" },
    jsonc = { "jq" },
    bash = { "shfmt" },
    fish = { "fish_indent" },
    markdown = { "markdownfmt" }
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
