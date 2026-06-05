vim.pack.add { "https://github.com/ibhagwan/fzf-lua", "https://github.com/nvim-tree/nvim-web-devicons" }

require("fzf-lua").setup {
  winopts = {
    preview = {
      border = "rounded",
      scrollbar = "float"
    },
    height = 0.9,
    width = 0.8,
    row = 0.5,
    col = 0.5,
    border = "rounded",
    backdrop = 60
  },
  files = {
    previewer = "bat"
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
      "header:" .. colors.red
    }, ","),
  },
  hls = {
    normal = "FzfLuaNormal",
    border = "FzfLuaBorder",
    preview_normal = "FzfLuaNormal",
    preview_border = "FzfLuaBorder",
    scrollbar_f = "PmenuSel",
    scrollbar_e = "PmenuSbar"
  },
  previewers = {
    bat = {
      cmd  = "bat",
      args = "--color=always --style=numbers,changes"
    },
  }
}
