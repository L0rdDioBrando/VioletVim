vim.schedule(function()
  vim.pack.add { "https://github.com/stevearc/oil.nvim", "https://github.com/nvim-tree/nvim-web-devicons" }

  require("oil").setup({
    default_file_explorer = true,
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    columns = {
      "icon",
      "permissions"
    },
    keymaps = {
      ["?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-v>"] = "actions.select_vsplit",
      ["<C-x>"] = "actions.select_split",
      ["q"] = "actions.close",
      ["u"] = "actions.parent",
      ["w"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["s"] = "actions.toggle_hidden",
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
