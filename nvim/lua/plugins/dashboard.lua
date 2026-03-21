return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      config = {
        header = {
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "██╗   ██╗██╗ ██████╗ ██╗     ███████╗████████╗██╗   ██╗██╗███╗   ███╗",
          "██║   ██║██║██╔═══██╗██║     ██╔════╝╚══██╔══╝██║   ██║██║████╗ ████║",
          "██║   ██║██║██║   ██║██║     █████╗     ██║   ██║   ██║██║██╔████╔██║",
          "╚██╗ ██╔╝██║██║   ██║██║     ██╔══╝     ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║",
          " ╚████╔╝ ██║╚██████╔╝███████╗███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║",
          "  ╚═══╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
          "                                                     ",
        },
        shortcut = {
          { icon = '󰊳 ', desc = 'Update', group = 'CustomGroup', action = 'Lazy update', key = 'u' },
          { icon = ' ', desc = 'Files', group = 'CustomGroup', action = 'FzfLua files', key = 'f' },
          { icon = ' ', desc = 'New File', group = 'CustomGroup', action = 'ene | startinsert', key = 'n' },
          { icon = ' ', desc = 'File tree', group = 'CustomGroup', action = 'Neotree', key = 't' },
          { icon = ' ', desc = 'Old files', group = 'CustomGroup', action = 'FzfLua oldfiles', key = 'r' },
          { icon = ' ', desc = 'Quit Neovim', group = 'CustomGroup', action = 'qa!', key = 'q' },
      },
        packages = { enable = true },
        project = { enable = true }, 
        mru = { enable = true },
        footer = {},
    }
    })
    vim.api.nvim_set_hl(0, "CustomGroup", { 
      fg = "#b7bdf8",  -- Lavender
      bold = true 
    })
    vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#b7bdf8" }) -- Lavender
end,
}