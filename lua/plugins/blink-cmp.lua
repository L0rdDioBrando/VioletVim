vim.pack.add {
  "https://github.com/saghen/blink.cmp",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/saghen/blink.lib",
  "https://github.com/L3MON4D3/LuaSnip"
}
local cmp = require('blink.cmp')
local opts = {
  snippets = { preset = "luasnip" },
  keymap = {
    preset = "default",
    ["<CR>"] = { "accept", "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ['<Up>'] = { 'select_prev', 'fallback' },
    ['<Down>'] = { 'select_next', 'fallback' },
    ["<C-Tab>"] = { "snippet_forward", "fallback" },
    ["<C-q>"] = { "snippet_backward", "fallback" },
  },
  appearance = {
    nerd_font_variant = "mono"
  },
  completion = {
    documentation = { auto_show = false, auto_show_delay_ms = 500 },
    accept = { auto_brackets = { enabled = true }, },
    menu = {
      border = "rounded",
    },
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  fuzzy = { implementation = "lua" },
  signature = { enabled = true },
}
cmp.setup(opts)
