vim.pack.add {
  "https://github.com/saghen/blink.cmp",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/saghen/blink.lib",
  "https://github.com/L3MON4D3/LuaSnip"
}
require("blink.cmp").setup {
  snippets = { preset = "luasnip" },
  keymap = {
    preset = "enter",
    ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<CR>"] = { "accept", "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<Up>"] = { "select_prev", "fallback" },
    ["<Down>"] = { "select_next", "fallback" },
  },
  appearance = {
    nerd_font_variant = "mono"
  },
  completion = {
    documentation = { auto_show = false, auto_show_delay_ms = 500 },
    accept = { auto_brackets = { enabled = true }, },
    menu = { border = "rounded", },
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  fuzzy = { implementation = "prefer_rust_with_warning" },
  signature = { enabled = false },
}
require("blink.cmp").build()
