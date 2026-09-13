vim.pack.add { "https://github.com/nvim-treesitter/nvim-treesitter" }

require("nvim-treesitter").setup {
  install_dir = vim.fn.stdpath("data") .. "/site"
}

require("nvim-treesitter").install {
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
  "c",
  "python"
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
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
    "c",
    "python"
  },
  callback = function() vim.treesitter.start() end,
})
