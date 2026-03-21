return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        mode = "buffers",
        numbers = "none",
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "neo-tree",
            highlight = "Directory",
            text_align = "left",
            separator = true,
            padding = 0,
          },
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        color_icons = true,
        close_command = function(n) require("bufdelete").bufdelete(n, false) end,
        right_mouse_command = function(n) require("bufdelete").bufdelete(n, false) end,

        indicator = {
          style = 'icon',
          icon = '▎',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
      },
    }
  end,
}