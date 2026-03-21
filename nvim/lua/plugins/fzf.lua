return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    local macchiato = require("catppuccin.palettes").get_palette("macchiato")
    vim.api.nvim_set_hl(0, "FzfLuaBorder", { fg = "#b7bdf8" })
    vim.api.nvim_set_hl(0, "FzfLuaNormal", { bg = "#1e2030" })
    require("fzf-lua").setup {
      treesitter = {
        enabled = false,
      },
      file_icon_padding = ' ',
      winopts = {
        preview = {
          border = 'rounded',
          scrollbar = 'float',
        },
        height = 0.85,
        width = 0.8,
        row = 0.35,
        col = 0.5,
        border = "rounded",
        backdrop = 60,
      },
      keymap = { },
      actions = { },
      defaults = {
        previewer = true,
      },
      fzf_opts = {
        ['--color'] = table.concat({
          'fg:' .. macchiato.text,
          'bg:' .. macchiato.mantle,
          'hl:' .. macchiato.red,
          'fg+:' .. macchiato.text,
          'bg+:' .. macchiato.surface0,
          'hl+:' .. macchiato.red,
          'info:' .. macchiato.teal,
          'prompt:' .. macchiato.lavender,
          'pointer:' .. macchiato.rosewater,
          'marker:' .. macchiato.rosewater,
          'spinner:' .. macchiato.lavender,
          'header:' .. macchiato.lavender,
        }, ','),
      },
      fzf_colors = false,
      hls = {
        normal         = 'Normal',
        border         = 'FzfLuaBorder',
        preview_normal = 'FzfLuaNormal',
        preview_border = 'FzfLuaBorder',
        scrollbar_f    = 'PmenuSel',
        scrollbar_e    = 'PmenuSbar',
      },
      previewers = { },
    }
  end,
}