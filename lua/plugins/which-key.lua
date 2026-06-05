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

--[[wk.add({
  { "<leader>f", group = "Find" },
  { "<leader>b", group = "Buffers" },
  { "<leader>w", group = "Other", icon = { icon = "󰆓 ", color = colors.green } },
  { "<leader>g", group = "Git", icon = { icon = "󰊢 ", color = colors.peach } },
  { "<leader>y", group = "Clipboard", icon = { icon = " ", color = colors.sapphire } },
  { "<leader>t", group = "Oil", icon = { icon = "󰪶", color = colors.blue } },
  { "<leader>a", group = "Aerial", icon = { icon = "󱐋", color = colors.yellow } },
  { "<leader>s", icon = { icon = "󰪶 ", color = colors.lavender } },
  { "<C-s>", icon = { icon = " ", color = colors.teal } },
  { "<leader>u", icon = { icon = "󰚰 ", color = colors.sky } },
})]]
