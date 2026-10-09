vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

require("nvim-treesitter").setup {
  install_dir = vim.fn.stdpath("data") .. "/site"
}

require("nvim-treesitter").install {
  "lua",
  "nix",
  "json",
  "kdl",
  "html",
  "css",
  "markdown",
  "markdown_inline",
  "go",
  "bash",
  "zsh",
  "python",
  "yaml",
  "toml",
  "kitty",
  "javascript"
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "nix",
    "json",
    "jsonc",
    "kdl",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "go",
    "sh",
    "zsh",
    "python",
    "yaml",
    "toml",
    "kitty",
    "javascript"
  },
  callback = function() vim.treesitter.start() end,
})
