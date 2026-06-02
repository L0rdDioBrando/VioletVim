vim.schedule(function()
  vim.pack.add { "https://github.com/windwp/nvim-autopairs" }

  require('nvim-autopairs').setup({
    check_ts = true,
    fast_wrap = {
      map = '<We>',
      chars = { "{", "[", "(", '"', "'", "<", },
      pattern = [=[[%'%"%>%]%)%}%,]]=],
      end_key = '$',
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      check_comma = true,
      highlight = 'PmenuSel',
      highlight_grey = 'LineNr',
    },
  })
end)
