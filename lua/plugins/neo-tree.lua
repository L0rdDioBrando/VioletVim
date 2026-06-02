vim.pack.add {
  "https://github.com/nvim-neo-tree/neo-tree.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/MunifTanjim/nui.nvim",
}

require("neo-tree").setup({
  close_if_last_window = true,
  window = {
    width = 24,
    separator_position = "left",
  },
  filesystem = {
    use_libuv_file_watcher = true,
    filtered_items = {
      visible = true,
      hide_dotfiles = true,
      hide_gitignored = true,
      hide_hidden = false,
      never_show = {
        ".DS_Store",
        "thumbs.db"
      },
    },
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = "open_default",
    sources = { "filesystem" }
  },
})
