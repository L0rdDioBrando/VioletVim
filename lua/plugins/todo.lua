vim.pack.add { "https://github.com/folke/todo-comments.nvim", "https://github.com/nvim-lua/plenary.nvim" }
require("todo-comments").setup {
  opts = {
    colors = {
      error = { "DiagnosticError", "ErrorMsg", "#ed8796" },
      warning = { "DiagnosticWarn", "WarningMsg", "#eed49f" },
      info = { "DiagnosticInfo", "#91d7e3"},
      hint = { "DiagnosticHint", "#8bd5ca" },
      default = { "Identifier", "#b7bdf8" },
      test = { "Identifier", "#8aadf4" }
    },
  }
}
