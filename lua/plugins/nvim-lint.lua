vim.pack.add { "https://github.com/mfussenegger/nvim-lint" }

require("lint").linters_by_ft = {
  go = { "golangcilint" },
  sh = { 'shellcheck' },
  zsh = { "zsh" },
  json = { "jsonlint" },
  python = { "ruff" },
  css = { "stylelint" },
  c = { "cpplint" },
  cpp = { "cpplint" },
  lua = { "stylua" },
  javascript = { "eslint_d" },
  nix = { "statix" },
  markdown = { "markdownlint-cli2" },
}
