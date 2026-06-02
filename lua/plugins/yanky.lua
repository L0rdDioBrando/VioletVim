vim.schedule(function()
  vim.pack.add { "https://github.com/gbprod/yanky.nvim" }

  require("yanky").setup({
    ring = {
      storage = "shada",
      database = {
        max_entries = 2000,
      },
      history_length = 200,
      sync_with_numbered_registers = true,
      ignore_registers = { "_" },
      update_register_on_cycle = false,
    },
    database = {
      max_entries = 1000,
    },
    picker = {
      select = {
        action = require("yanky.picker").actions.put("p"),
      },
    },
    highlight = {
      on_put = true,
      on_yank = true,
      timer = 300,
    },
    system_clipboard = {
      sync_with_ring = true,
    },
  })
end)
