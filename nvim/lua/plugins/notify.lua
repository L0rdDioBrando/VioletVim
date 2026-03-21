return {
  "rcarriga/nvim-notify",
  config = function()
    vim.cmd([[
      highlight NotifyERRORBorder guifg=#ed8796
      highlight NotifyERRORIcon guifg=#ed8796
      highlight NotifyERRORTitle guifg=##ed8796
      highlight NotifyERRORBody guifg=#b7bdf8 guibg=#24273a

      highlight NotifyWARNBorder guifg=#eed49f
      highlight NotifyWARNIcon guifg=#eed49f
      highlight NotifyWARNTitle guifg=#eed49f
      highlight NotifyWARNBody guifg=#b7bdf8 guibg=#24273a

      highlight NotifyINFOBorder guifg=#b7bdf8 
      highlight NotifyINFOIcon guifg=#b7bdf8
      highlight NotifyINFOTitle guifg=#b7bdf8
      highlight NotifyINFOBody guifg=#b7bdf8 guibg=#24273a 

      highlight NotifyDEBUGBorder guifg=#c6a0f6
      highlight NotifyDEBUGIcon guifg=#c6a0f6 
      highlight NotifyDEBUGTitle guifg=#c6a0f6 
      highlight NotifyDEBUGBody guifg=#b7bdf8 guibg=#24273a 

      highlight NotifyTRACEBorder guifg=#f5bde6 
      highlight NotifyTRACEIcon guifg=#f5bde6 
      highlight NotifyTRACETitle guifg=#f5bde6 
      highlight NotifyTRACEBody guifg=#b7bdf8 guibg=#24273a
    ]])
    local notify = require("notify")
    notify.setup({
      background_colour = "#24273a",
      max_height = function() return math.floor(vim.o.lines * 0.75) end,
      max_width = function() return math.floor(vim.o.columns * 0.75) end,
      timeout = 3000,
      max_width = 80,
      render = "wrapped-compact",
      stages = "fade_in_slide_out",
      top_down = true,
    })

    vim.notify = notify
  end,
}