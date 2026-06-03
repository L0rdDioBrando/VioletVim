vim.pack.add { "https://github.com/nvim-mini/mini.files" }

require('mini.files').setup {
  content = {
    filter = nil,
    highlight = nil,
    prefix = nil,
    sort = nil,
  },

  mappings = {
    close       = 'q',
    go_in       = 'l',
    go_in_plus  = 'L',
    go_out      = 'h',
    go_out_plus = 'H',
    mark_goto   = "'",
    mark_set    = 'm',
    reset       = '<BS>',
    reveal_cwd  = '@',
    show_help   = 'g?',
    synchronize = '=',
    trim_left   = '<',
    trim_right  = '>',
  },

  options = {
    permanent_delete = true,
    use_as_default_explorer = true,
    lsp_timeout = 1000,
  },

  windows = {
    max_number = math.huge,
    preview = true,
    width_focus = 50,
    width_nofocus = 15,
    width_preview = 25,
  },
}
