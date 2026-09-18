vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin", priority = 1000, } }
_G.colors = require("catppuccin.palettes").get_palette("macchiato")
require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
  custom_highlights = {
    -- Catppuccin
    Rosewater = { fg = colors.rosewater },
    Flamingo = { fg = colors.flamingo },
    Pink = { fg = colors.pink },
    Mauve = { fg = colors.mauve },
    Red = { fg = colors.red },
    Maroon = { fg = colors.maroon },
    Peach = { fg = colors.peach },
    Yellow = { fg = colors.yellow },
    Green = { fg = colors.green },
    Teal = { fg = colors.teal },
    Sky = { fg = colors.sky },
    Sapphire = { fg = colors.sapphire },
    Blue = { fg = colors.blue },
    Lavender = { fg = colors.lavender },
    -- Default
    Normal = { bg = colors.base, fg = colors.text },
    NormalFloat = { fg = colors.lavender },
    FloatBorder = { fg = colors.lavender },
    Pmenu = { bg = colors.mantle, fg = colors.lavender },
    FloatTitle = { bg = colors.base, fg = colors.lavender },
    Directory = { fg = colors.lavender },
    -- Which-Key
    WhichKeyBorder = { fg = colors.lavender },
    -- Fzf-Lua
    FzfLuaBorder = { fg = colors.lavender },
    FzfLuaNormal = { bg = colors.base, fg = colors.lavender },
    -- Blink
    BlinkIndent = { fg = colors.surface1 },
    BlinkIndentViolet = { fg = colors.lavender },
    BlinkCmpMenuBorder = { fg = colors.lavender },
    -- Heirline
    TabLineFill = { bg = colors.crust },
  },
  auto_integrations = true,
  integrations = {
    native_lsp = {
      enabled = true,
      underlines = { errors = { "undercurl" } },
    },
  },
})
