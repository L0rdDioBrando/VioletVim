return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    local colors = {
      rosewater = "#f4dbd6",
      flamingo = "#f0c6c6",
      pink = "#f5bde6",
      mauve = "#c6a0f6",
      red = "#ed8796",
      maroon = "#ee99a0",
      peach = "#f5a97f",
      yellow = "#eed49f",
      green = "#a6da95",
      teal = "#8bd5ca",
      sky = "#91d7e3",
      sapphire = "#7dc4e4",
      blue = "#8aadf4",
      lavender = "#b7bdf8",
      text = "#cad3f5",
      subtext1 = "#b8c0e0",
      subtext0 = "#a5adcb",
      overlay2 = "#939ab7",
      overlay1 = "#8087a2",
      overlay0 = "#6e738d",
      surface2 = "#5b6078",
      surface1 = "#494d64",
      surface0 = "#363a4f",
      base = "#24273a",
      mantle = "#1e2030",
      crust = "#181926",
    }
    
    telescope.setup({
      defaults = {
        border = true,
        winblend = 0,
        mappings = {
          i = {
            ["<Esc>"] = actions.close,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
          },
        },
        layout_config = {
          horizontal = {
            preview_width = 1,
          },
        },
      },
      pickers = {
        find_files = {
          theme = "ivy",
          hidden = true,
        },
        oldfiles = {
          theme = "ivy",
          previewer = true,
        },
        live_grep = {
          theme = "ivy",
        },
      },
    })

    vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.mauve, bg = colors.mantle })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.lavender, bg = colors.mantle })
    vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = colors.lavender, bg = colors.mantle })
    vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = colors.lavender, bg = colors.mantle })
    
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = colors.lavednder, bg = colors.mantle, bold = true })
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = colors.lavednder, bg = colors.mantle, bold = true })
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = colors.lavednder, bg = colors.mantle, bold = true })
    
    vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = colors.text, bg = colors.surface0 })
    vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.lavender, bold = true })
  end,
}