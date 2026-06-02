vim.schedule(function()
  vim.pack.add { "https://github.com/stevearc/aerial.nvim" }

  require("aerial").setup({
    backends = { "treesitter", "lsp", "markdown", "asciidoc", "man" },

    layout = {
      max_width = { 40, 0.2 },
      width = nil,
      min_width = 25,
      win_opts = {},
      default_direction = "prefer_right",
      placement = "window",
      resize_to_content = true,
      preserve_equality = false,
    },

    attach_mode = "window",
    close_automatic_events = {},
    lazy_load = true,
    disable_max_lines = 10000,
    disable_max_size = 2000000,

    filter_kind = {
      "Class",
      "Constructor",
      "Enum",
      "Function",
      "Interface",
      "Module",
      "Method",
      "Struct",
    },

    highlight_mode = "split_width",
    highlight_closest = false,
    highlight_on_hover = false,
    highlight_on_jump = 300,
    autojump = false,
    show_guides = true,
    nerd_font = "auto",

    guides = {
      mid_item   = "├─",
      last_item  = "└─",
      nested_top = "│ ",
      whitespace = "  ",
    },

    manage_folds = false,
    link_folds_to_tree = false,
    link_tree_to_folds = true,
    open_automatic = false,
    post_jump_cmd = "normal! zz",
    update_events = "TextChanged,InsertLeave",

    float = {
      border = "rounded",
      relative = "cursor",
      max_height = 0.9,
      height = nil,
      min_height = { 8, 0.1 },
    },
  })
end)
