vim.schedule(function()
  vim.pack.add { "https://github.com/stevearc/oil.nvim", "https://github.com/nvim-tree/nvim-web-devicons" }
  require("oil").setup({
    default_file_explorer = true,
    columns = {
      "icon",
      "permissions"
    },
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name)
        return name == ".." or name == ".git"
      end,
    },
    float = {
      padding = 2,
      max_width = 0,
      max_height = 0,
      border = "rounded"
    },
  })
end)
