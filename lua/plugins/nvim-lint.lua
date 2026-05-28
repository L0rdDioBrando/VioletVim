vim.pack.add { "https://github.com/mfussenegger/nvim-lint" }
require("lint").linters_by_ft = {
  markdown = { "vale" },
  go = { "golangcilint" },
  bash = { "bash" },
  zsh = { "zsh" },
  json = { "jsonlint" },
  python = { "ruff" },
  css = { "stylelint" },
  c = { "cpplint" },
  cpp = { "cpplint" },
  sh = { "shellcheck" },
  lua = { "stylua" },
  javascript = { "eslint_d" },
  nix = { "statix" },
}
