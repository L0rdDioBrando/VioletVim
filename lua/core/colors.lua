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
    -- Notify
    NotifyERRORBorder = { fg = colors.red },
    NotifyERRORIcon = { fg = colors.red },
    NotifyERRORTitle = { fg = colors.text },
    NotifyERRORBody = { fg = colors.lavender, bg = colors.base },
    -- Warning
    NotifyWARNBorder = { fg = colors.yellow },
    NotifyWARNIcon = { fg = colors.yellow },
    NotifyWARNTitle = { fg = colors.text },
    NotifyWARNBody = { fg = colors.lavender, bg = colors.base },
    -- Info
    NotifyINFOBorder = { fg = colors.lavender },
    NotifyINFOIcon = { fg = colors.lavender },
    NotifyINFOTitle = { fg = colors.text },
    NotifyINFOBody = { fg = colors.lavender, bg = colors.base },
    -- Debug
    NotifyDEBUGBorder = { fg = colors.mauve },
    NotifyDEBUGIcon = { fg = colors.mauve },
    NotifyDEBUGTitle = { fg = colors.text },
    NotifyDEBUGBody = { fg = colors.lavender, bg = colors.base },
    -- Trace
    NotifyTRACEBorder = { fg = colors.blue },
    NotifyTRACEIcon = { fg = colors.blue },
    NotifyTRACETitle = { fg = colors.text },
    NotifyTRACEBody = { fg = colors.lavender, bg = colors.base },
  },
  auto_integrations = true,
  integrations = {
    native_lsp = {
      enabled = true,
      underlines = { errors = { "undercurl" } },
    },
  },
})
