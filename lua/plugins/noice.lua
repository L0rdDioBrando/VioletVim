vim.pack.add { "https://github.com/folke/noice.nvim", "https://github.com/MunifTanjim/nui.nvim", "https://github.com/rcarriga/nvim-notify" }
require("noice").setup({
  cmdline = { enabled = true },
  messages = { enabled = true },
  presets = {
    bottom_search = true,
    long_message_to_split = true,
    inc_rename = false,
    lsp_doc_border = false,
  }
})
