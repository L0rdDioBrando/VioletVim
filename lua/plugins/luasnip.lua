vim.schedule(function()
  vim.pack.add {
    "https://github.com/L3MON4D3/LuaSnip",
    "https://github.com/rafamadriz/friendly-snippets"
  }
  require("luasnip.loaders.from_vscode").lazy_load()

  require("luasnip").setup({
    history = true,
    delete_check_events = "TextChanged",
    region_check_events = "InsertEnter",
  })
  local s = require("luasnip").snippet
  local t = require("luasnip").text_node
  local i = require("luasnip").insert_node

  require("luasnip").add_snippets("nix", {
    s("default", {
      t({ "{ ... }:", "", "{" }),
      t({ "", "  imports = [", "" }),
      t({ "    " }), i(1),
      t({ "", "  ];", "}" }),
    })
  })
end)
