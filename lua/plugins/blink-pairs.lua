vim.pack.add {
  "https://github.com/saghen/blink.lib",
  "https://github.com/saghen/blink.pairs"
}
require("blink.pairs").build():pwait(60000)
require("blink.pairs").setup({
  mappings = {
    enabled = true,
    cmdline = true,
    disabled_filetypes = {},
    wrap = {
      ["<C-b>"] = "motion",
      ["<C-S-b>"] = "motion_reverse",
    },
    pairs = {},
  },
  highlights = {
    enabled = false,
    cmdline = true,
    groups = { "BlinkPairsOrange", "BlinkPairsPurple", "BlinkPairsBlue" },
    unmatched_group = "BlinkPairsUnmatched",

    matchparen = {
      enabled = true,
      cmdline = false,
      include_surrounding = false,
      group = "BlinkPairsMatchParen",
      priority = 250,
    },
  },
  debug = false,
})
