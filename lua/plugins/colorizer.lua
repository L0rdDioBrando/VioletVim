vim.pack.add { "https://github.com/catgoose/nvim-colorizer.lua" }

require("colorizer").setup {
  options = {
    parsers = {
      css = true,
    },
    xcolor = { enable = true }
  },
  display = {
    mode = "background",
    background = {
      bright_fg = colors.base,
      dark_fg = colors.text,
    },
    virtualtext = {
      char = "■",
      position = "eol",
      hl_mode = "foreground",
    },
    priority = {
      default = 150,
      lsp = 200,
    },
    disable_document_color = true,
  }
}
