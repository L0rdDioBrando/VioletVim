vim.pack.add { "https://github.com/ibhagwan/fzf-lua", "https://github.com/nvim-tree/nvim-web-devicons" }
require("fzf-lua").setup {
  treesitter = {
    enabled = true,
  },
  file_icon_padding = " ",
  winopts = {
    preview = {
      border = "rounded",
      scrollbar = "float",
      image_renderer = "viu",
    },
    height = 0.85,
    width = 0.8,
    row = 0.35,
    col = 0.5,
    border = "rounded",
    backdrop = 60,
  },
  files = {
    previewer = "builtin",
  },
  keymap = {},
  actions = {},
  defaults = {
    previewer = true,
  },
  fzf_opts = {
    ["--color"] = table.concat({
      "fg:" .. colors.text,
      "bg:" .. colors.base,
      "hl:" .. colors.red,
      "fg+:" .. colors.lavender,
      "bg+:" .. colors.surface0,
      "hl+:" .. colors.red,
      "info:" .. colors.teal,
      "prompt:" .. colors.lavender,
      "pointer:" .. colors.rosewater,
      "marker:" .. colors.rosewater,
      "spinner:" .. colors.rosewater,
      "header:" .. colors.red,
    }, ","),
  },
  fzf_colors = false,
  hls = {
    normal = "FzfLuaNormal",
    border = "FzfLuaBorder",
    preview_normal = "FzfLuaNormal",
    preview_border = "FzfLuaBorder",
    scrollbar_f = "PmenuSel",
    scrollbar_e = "PmenuSbar",
  },
  previewers = {
    bat        = {
      cmd  = "bat",
      args = "--color=always --style=numbers,changes",
    },
    extensions = {
      ["png"] = { "chafa", "{file}" },
      ["svg"] = { "chafa", "{file}" },
      ["jpg"] = { "chafa", "{file}" },
    },
  },
}
