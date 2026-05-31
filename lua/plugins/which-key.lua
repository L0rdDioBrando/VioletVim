vim.pack.add { "https://github.com/folke/which-key.nvim" }
local wk = require("which-key")
wk.setup({
  preset = "modern",
  icons = {
    group = "+",
    separator = "➜",
  },
  win = {
    border = "rounded",
    padding = { 1, 2 },
    title = true,
    title_pos = "center",
    wo = {
      winhighlight = "NormalFloat:NormalFloat,FloatBorder:WhichKeyBorder",
    },
  },
})
wk.add({
  { "<leader>f", group = "Find" },
  { "<leader>b", group = "Buffers" },
  { "<leader>w", group = "Other", icon = { icon = "󰆓 ", color = "green" } },
  { "<leader>g", group = "Git", icon = { icon = "󰊢 ", color = "orange" } },
  { "<leader>d", group = "Debugger", icon = { icon = "󰃤 ", color = "red" } },
  { "<leader>y", group = "Clipboard", icon = { icon = " ", color = "cyan" } },
  { "<leader>r", group = "Oil", icon = { icon = "󰪶", color = "blue" } },
  { "<leader>a", group = "Aerial", icon = { icon = "󱐋", color = "yellow" } },
  { "<leader>m", group = "Mason", icon = { icon = "󱌢 ", color = "cyan" } },
  { "<leader>e", group = "Neotest", icon = { icon = "󰙨 ", color = "yellow" } },
  { "<leader>s", icon = { icon = "󰪶 ", color = "magenta" } }
})
