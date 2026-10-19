vim.pack.add({
  "https://github.com/saghen/blink.cmp",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/saghen/blink.lib",
  "https://github.com/L3MON4D3/LuaSnip"
})

require("blink.cmp").setup {
  snippets = { preset = "luasnip" },
  keymap = {
    ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<A-s>"] = { "show_signature", "hide_signature", "fallback" },
    ["<A-k>"] = { "scroll_signature_up", "fallback" },
    ["<A-j>"] = { "scroll_signature_down", "fallback" },
    ["<Up>"] = { "select_prev", "fallback" },
    ["<Down>"] = { "select_next", "fallback" },
    ["<C-e>"] = { "hide", "fallback" },
    ["<CR>"] = { "accept", "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
  },
  appearance = {
    nerd_font_variant = "mono"
  },
  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 500,
      window = {
        border = "rounded"
      }
    },
    accept = { auto_brackets = { enabled = true }, },
    menu = {
      border = "rounded",
      draw = {
        components = {
          kind_icon = {
            Text = '󰉿',
            Method = '󰊕',
            Function = '󰊕',
            Constructor = '󰒓',

            Field = '󰜢',
            Variable = '󰆦',
            Property = '󰖷',

            Class = '󱡠',
            Interface = '󱡠',
            Struct = '󱡠',
            Module = '󰅩',

            Unit = '󰪚',
            Value = '󰦨',
            Enum = '󰦨',
            EnumMember = '󰦨',

            Keyword = '󰻾',
            Constant = '󰏿',

            Snippet = '󱄽',
            Color = '󰏘',
            File = '󰈔',
            Reference = '󰬲',
            Folder = '󰉋',
            Event = '󱐋',
            Operator = '󰪚',
            TypeParameter = '󰬛',
          },
        },
      },
    },
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  fuzzy = { implementation = "prefer_rust_with_warning" },
  signature = { enabled = true },
}

require("blink.cmp").build()
