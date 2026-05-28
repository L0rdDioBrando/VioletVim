vim.pack.add { "https://github.com/romus204/tree-sitter-manager.nvim" }
require("tree-sitter-manager").setup({
  ensure_installed = {
    "lua",
    "nix",
    "json",
    "kdl",
    "css",
    "markdown",
    "markdown_inline",
    "vim",
    "vimdoc",
    "go",
    "bash",
    "regex",
    "c"
  }, -- Add more languages
  border = "rounded",
  auto_install = true,
  highlight = true
})
