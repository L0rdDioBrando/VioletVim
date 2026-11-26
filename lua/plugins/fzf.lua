vim.pack.add({ "https://github.com/ibhagwan/fzf-lua", "https://github.com/nvim-tree/nvim-web-devicons" })

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
  fzf_opts = {
    ["--color"] = table.concat({
      "fg:" .. colors.text,
      "fg+:" .. colors.lavender,
      "bg:" .. colors.base,
      "bg+:" .. colors.surface0,
      "hl:" .. colors.red,
      "hl+:" .. colors.red,
      "info:" .. colors.lavender,
      "prompt:" .. colors.lavender,
      "pointer:" .. colors.lavender,
      "marker:" .. colors.mauve,
      "spinner:" .. colors.mauve,
      "header:" .. colors.overlay0
    }, ","),
  },
  hls = {
    normal = "FzfLuaNormal",
    border = "FzfLuaBorder",
    preview_normal = "FzfLuaNormal",
    preview_border = "FzfLuaBorder",
    scrollbar_f = "PmenuSel",
    scrollbar_e = "PmenuSbar"
  }
}
