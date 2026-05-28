vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin", priority = 1000, } }
_G.colors = require("catppuccin.palettes").get_palette("macchiato")
require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
  background = {
    light = "latte",
    dark = "macchiato",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  transparent_background = false, -- disables setting the background color.
  float = {
    transparent = false,          -- enable transparent floating windows
    solid = false,                -- use solid styling for floating windows, see |winborder|
  },
  show_end_of_buffer = false,     -- shows the "~" characters after the end of buffers
  term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false,              -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15,            -- percentage of the shade to apply to the inactive window
  },
  no_italic = false,              -- Force no italic
  no_bold = false,                -- Force no bold
  no_underline = false,           -- Force no underline
  styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" },      -- Change the style of comments
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
    virtual_text = {
      errors = { "italic" },
      hints = { "italic" },
      warnings = { "italic" },
      information = { "italic" },
      ok = { "italic" },
    },
    underlines = {
      errors = { "underline" },
      hints = { "underline" },
      warnings = { "underline" },
      information = { "underline" },
      ok = { "underline" },
    },
    inlay_hints = {
      background = true,
    },
  },
  color_overrides = {},
  custom_highlights = {
    -- Default
    Normal = { bg = colors.base, fg = colors.text },
    NormalFloat = { fg = colors.lavender },
    Pmenu = { bg = colors.base, fg = colors.lavender },
    FloatTitle = { bg = colors.base, fg = colors.lavender },
    -- Dashboard
    CustomGroup = { fg = colors.lavender, bold = true },
    DashboardHeader = { fg = colors.lavender },
    -- Which-Key
    WhichKeyBorder = { fg = colors.lavender },
    -- Fzf-Lua
    FloatBorder = { fg = colors.lavender },
    FzfLuaBorder = { fg = colors.lavender },
    FzfLuaNormal = { bg = colors.base, fg = colors.lavender },
    -- Neotree
    NeoTreeNormal = { bg = colors.mantle },
    NeoTreeNormalNC = { bg = colors.mantle },
    NeoTreeCursorLine = { bg = colors.surface0 },
    NeoTreeTitleBar = { bg = colors.crust, fg = colors.text },
    NeoTreeFloatBorder = { fg = colors.surface1, bg = colors.mantle },
    NeoTreeWinSeparator = { fg = colors.mantle, bg = colors.mantle },
    NeoTreeDirectoryName = { fg = colors.lavender },
    NeoTreeDirectoryIcon = { fg = colors.lavender },
    NeoTreeRootName = { fg = colors.lavender, bold = true },
    NeoTreeFileName = { fg = colors.text },
    NeoTreeFileIcon = { fg = colors.blue },
    NeoTreeExpander = { fg = colors.overlay0 },
    NeoTreeDotfile = { fg = colors.surface1 },
    NeoTreeGitAdded = { fg = colors.green },
    NeoTreeGitModified = { fg = colors.yellow },
    NeoTreeGitDeleted = { fg = colors.red },
    NeoTreeGitUntracked = { fg = colors.peach },
    NeoTreeGitIgnored = { fg = colors.overlay0 },
    NeoTreeGitStaged = { fg = colors.teal },
    NeoTreeGitConflict = { fg = colors.maroon },
    NeoTreeGitRenamed = { fg = colors.pink },
    NeoTreeModified = { fg = colors.peach },
    NeoTreeIndentMarker = { fg = colors.surface1 },
    NeoTreeSymbolicLinkTarget = { fg = colors.sapphire },
    NeoTreeHiddenByName = { fg = colors.overlay0 },
    -- Blink
    BlinkIndent = { fg = colors.surface1 },
    BlinkIndentViolet = { fg = colors.lavender },
    BlinkCmpMenuBorder = { fg = colors.lavender },
    -- Mason
    MasonHighlightBlock = { bg = colors.lavender, fg = colors.base },
    -- Heirline
    TabLineFill = { bg = colors.crust },
    -- Noice
    NoiceCmdlinePopupBorder = { fg = colors.lavender },
    NoiceCmdlineIcon = { fg = colors.lavender },
    NoiceCmdlinePopupTitle = { fg = colors.lavender, bold = true },
    NoiceCmdlinePopupBorderSearch = { fg = colors.green },
    NoiceCmdlineIconSearch = { fg = colors.green },
    NoiceCmdlinePopupBorderLua = { fg = colors.mauve },
    NoiceCmdlineIconLua = { fg = colors.mauve },
    NoiceCmdlinePopup = { bg = colors.mantle },
    NoiceConfirmBorder = { fg = colors.blue },
    -- Nvim Web Dev Icons
    DevIconLua = { fg = colors.blue },
    -- Notify
    NotifyERRORBorder = { fg = colors.red },
    NotifyERRORIcon = { fg= colors.red },
    NotifyERRORTitle = { fg = colors.text },
    NotifyERRORBody = { fg = colors.lavender, bg = colors.base },
    -- Warning
    NotifyWARNBorder = { fg = colors.yellow },
    NotifyWARNIcon = { fg = colors.yellow },
    NotifyWARNTitle = { fg = colors.text },
    NotifyWARNBody = { fg= colors.lavender, bg = colors.base },
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
    -- Satellite
    SatelliteBar = { bg = colors.surface1 },
    SatelliteDiagnosticWarn = { fg = colors.peach },
    SatelliteDiagnosticInfo = { fg = colors.lavender },
    SatelliteDiagnosticHint = { fg = colors.blue },
    SatelliteDiagnosticError = { fg = colors.red },
    SatelliteCursor = { fg = colors.lavender },
    SatelliteSearch = { fg = colors.lavender },
  },
  default_integrations = false,
  auto_integrations = true,
  integrations = {
    blink_cmp = {
      style = "bordered",
    },
    notify = false,
    neotree = false,
    mason = true,
    which_key = true,
    native_lsp = {
      enabled = true,
      underlines = { errors = { "undercurl" } },
    },
  },
})
