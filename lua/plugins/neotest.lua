vim.schedule(function()
  vim.pack.add {
    "https://github.com/nvim-neotest/neotest",
    "https://github.com/nvim-neotest/nvim-nio",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-neotest/neotest-go",
  }

  require("neotest").setup({
    adapters = {
      require("neotest-go"),
    },
  })
end)
