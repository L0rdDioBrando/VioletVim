-- Plugins
vim.pack.add {
  "https://github.com/kylechui/nvim-surround",
  "https://github.com/folke/trouble.nvim",
}

require("core.options")
require("core.colors")
require("core.keymaps")
require("plugins.noice")
require("plugins.aerial")
require("plugins.dashboard")
require("plugins.heirline")
require("plugins.conform")
require("plugins.autopairs")
require("plugins.blink-cmp")
require("plugins.fzf")
require("plugins.blink-indent")
require("plugins.notify")
require("plugins.bufdelete")
require("plugins.dap")
require("plugins.gitsigns")
require("plugins.highlight-colors")
require("plugins.lazydev")
require("plugins.lsp-config")
require("plugins.neo-tree")
require("plugins.luasnip")
require("plugins.mason-lspconfig")
require("plugins.mason")
require("plugins.nvim-web-devicons")
require("plugins.oil")
require("plugins.todo")
require("plugins.tsm")
require("plugins.which-key")
require("plugins.yanky")
require("plugins.yazi")
require("plugins.neotest")
require("plugins.nvim-lint")

-- Colorsheme
vim.cmd('colorscheme catppuccin-macchiato')
