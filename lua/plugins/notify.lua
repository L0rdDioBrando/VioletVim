vim.pack.add { "https://github.com/rcarriga/nvim-notify" }

require("notify").setup({
  background_colour = "Normal",
  max_height = function() return math.floor(vim.o.lines * 0.75) end,
  max_width = function() return math.floor(vim.o.columns * 0.75) end,
  timeout = 3000,
  max_width = 80,
  render = "default",
  stages = "fade",
  top_down = true,
})
