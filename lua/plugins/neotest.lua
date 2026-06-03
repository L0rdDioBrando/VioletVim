vim.pack.add {
  "https://github.com/nvim-neotest/neotest",
  "https://github.com/nvim-neotest/nvim-nio",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-neotest/neotest-go",
  "https://github.com/rcasia/neotest-bash",
}

require("neotest").setup({
  adapters = {
    require("neotest-go"),
    require("neotest-bash")
  },
})
