vim.schedule(function()
  vim.pack.add { "https://github.com/saghen/blink.indent" }
  --- @module "blink.indent"
  --- @type blink.indent.Config
  require("blink.indent").setup({
    blocked = {
      buftypes = { include_defaults = true },
      filetypes = { include_defaults = true },
    },
    mappings = {
      border = "both",
      object_scope = "ii",
      object_scope_with_border = "ai",
      goto_top = "[i",
      goto_bottom = "]i",
    },
    static = {
      enabled = true,
      char = "▎",
      whitespace_char = nil,
      priority = 1,
      highlights = { "BlinkIndent" },
    },
    scope = {
      enabled = true,
      char = "▎",
      priority = 1000,
      highlights = { "BlinkIndentViolet" },
    },
  })
end)
