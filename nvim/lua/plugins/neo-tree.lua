return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        width = 30
      },
      filesystem = {
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
      sources = { "files", "buffs", "git" },
      },
    })

    local macchiato = require("catppuccin.palettes").get_palette("macchiato")

    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = macchiato.mantle })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = macchiato.mantle })
    vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = macchiato.surface0 })
    vim.api.nvim_set_hl(0, "NeoTreeStatusLine", { bg = macchiato.mantle, fg = macchiato.text })
    
    vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = macchiato.crust, fg = macchiato.text })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = macchiato.surface1, bg = macchiato.mantle })
    vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = macchiato.crust, bg = macchiato.crust })
    
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = macchiato.lavender, })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = macchiato.lavender })
    vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = macchiato.lavender, })
    vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = macchiato.text })
    vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = macchiato.blue })
    vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = macchiato.overlay0 })
    vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = macchiato.surface1, })
    
    vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = macchiato.green })
    vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = macchiato.yellow })
    vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = macchiato.red })
    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = macchiato.peach })
    vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = macchiato.overlay0 })
    vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = macchiato.teal })
    vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = macchiato.maroon })
    vim.api.nvim_set_hl(0, "NeoTreeGitRenamed", { fg = macchiato.pink })
    
    vim.api.nvim_set_hl(0, "NeoTreeModified", { fg = macchiato.peach })
    vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = macchiato.surface1 })
    vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = macchiato.sapphire })
    vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = macchiato.overlay0 })
  end,
}