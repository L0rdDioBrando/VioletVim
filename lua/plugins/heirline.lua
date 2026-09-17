vim.pack.add { "https://github.com/rebelot/heirline.nvim", "https://github.com/nvim-tree/nvim-web-devicons" }

local utils = require("heirline.utils")
local heirline = require("heirline")
local conditions = require("heirline.conditions")

heirline.load_colors(colors)

-- Bufferline
local TablineFileName = {
  provider = function(self)
    local filename = self.filename
    filename = filename == "" and "[No Name]" or vim.fn.fnamemodify(filename, ":t")
    return filename
  end,
  hl = function(self)
    return {
      bold = self.is_active or self.is_visible,
      italic = true,
      fg = self.is_active and colors.text or colors.subtext0,
    }
  end,
}

local TablineFileFlags = {
  {
    condition = function(self)
      return vim.api.nvim_get_option_value("modified", { buf = self.bufnr })
    end,
    provider = "  ",
    hl = { fg = colors.teal },
  },
  {
    condition = function(self)
      return not vim.api.nvim_get_option_value("modifiable", { buf = self.bufnr })
          or vim.api.nvim_get_option_value("readonly", { buf = self.bufnr })
    end,
    provider = function(self)
      if vim.api.nvim_get_option_value("buftype", { buf = self.bufnr }) == "terminal" then
        return "  "
      else
        return "  "
      end
    end,
    hl = { fg = colors.peach },
  },
}

local FileIcon = {
  init = function(self)
    local filename = self.filename
    local extension = vim.fn.fnamemodify(filename, ":e")
    self.icon, self.icon_color = require("nvim-web-devicons").get_icon_color(filename, extension, { default = true })
  end,
  provider = function(self)
    return self.icon and (self.icon .. " ")
  end,
  hl = function(self)
    return { fg = self.icon_color }
  end
}

local TablineFileNameBlock = {
  init = function(self)
    self.filename = vim.api.nvim_buf_get_name(self.bufnr)
  end,
  hl = function(self)
    if self.is_active then
      return colors.base
    else
      return colors.mantle
    end
  end,
  on_click = {
    callback = function(_, minwid, _, button)
      if (button == "m") then
        vim.schedule(function()
          vim.api.nvim_buf_delete(minwid, { force = false })
        end)
      else
        vim.api.nvim_win_set_buf(0, minwid)
      end
    end,
    minwid = function(self)
      return self.bufnr
    end,
    name = "heirline_tabline_buffer_callback",
  },
  { provider = " " },
  FileIcon,
  TablineFileName,
  TablineFileFlags,
}

local TablineCloseButton = {
  condition = function(self)
    return not vim.api.nvim_get_option_value("modified", { buf = self.bufnr })
  end,
  { provider = " " },
  {
    provider = "󰅖",
    hl = function(self)
      return {
        fg = self.is_active and colors.text or colors.subtext0,
      }
    end,
    on_click = {
      callback = function(_, minwid)
        vim.schedule(function()
          vim.api.nvim_buf_delete(minwid, { force = false })
          vim.cmd.redrawtabline()
        end)
      end,
      minwid = function(self)
        return self.bufnr
      end,
      name = "heirline_tabline_close_buffer_callback",
    },
  },
  { provider = " " },
}


local TablineBufferBlock = utils.surround({ "", "" }, function(self)
  if self.is_active then
    return colors.base
  else
    return colors.mantle
  end
end, { TablineFileNameBlock, TablineCloseButton })

local BufferLine = {
  hl = { bg = colors.crust },
  utils.make_buflist(
    TablineBufferBlock,
    { provider = "", hl = { fg = colors.text } },
    { provider = "", hl = { fg = colors.text } }
  )
}

-- Statusline
local mode_colors = {
  n = colors.lavender,
  i = colors.teal,
  v = colors.sky,
  V = colors.sky,
  c = colors.blue,
  t = colors.mauve,
  r = colors.sapphire
}

local Mode = {
  init = function(self)
    self.mode = vim.fn.mode(1):sub(1, 1)
    self.mode_color = mode_colors[self.mode] or colors.lavender
  end,

  {
    provider = "",
    hl = function(self)
      return {
        fg = self.mode_color,
      }
    end,
  },


  {
    hl = function(self)
      return {
        fg = colors.mantle,
        bg = self.mode_color,
        bold = true,
      }
    end,

    provider = function(self)
      return " " .. (self.mode_names[self.mode] or "UNKNOWN") .. " "
    end,
  },

  {
    provider = "",
    hl = function(self)
      return {
        fg = self.mode_color,
        bg = colors.surface0
      }
    end,
  },

  static = {
    mode_names = {
      n = "NORMAL",
      i = "INSERT",
      v = "VISUAL",
      V = "V-LINE",
      c = "COMMAND",
      t = "TERMINAL",
    }
  },
}

local Git = {
  condition = require("heirline.conditions").is_git_repo,

  init = function(self)
    self.status_dict = vim.b.gitsigns_status_dict
    self.has_changes = self.status_dict.added ~= 0 or self.status_dict.changed ~= 0 or self.status_dict.removed ~= 0
  end,

  hl = { fg = colors.peach },

  {
    provider = function(self)
      return "  " .. self.status_dict.head .. " "
    end,
    hl = { bold = true }
  },
}

local Ruler = {
  init = function(self)
    self.mode = vim.fn.mode(1):sub(1, 1)
    self.mode_color = mode_colors[self.mode] or colors.lavender
  end,
  {
    provider = " %P %l:%c ",
    hl = function(self)
      return {
        fg = self.mode_color,
        bg = colors.surface0
      }
    end,
  },
  {
    provider = "",
    hl = function()
      return {
        fg = colors.surface0
      }
    end,
  }
}

local Diagnostics = {
  condition = conditions.has_diagnostics,

  static = {
    error_icon = "  ",
    warn_icon = "  ",
    hint_icon = "  ",
  },

  init = function(self)
    self.errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
    self.warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
    self.hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  end,

  update = { "DiagnosticChanged", "BufEnter" },

  {
    provider = function(self)
      return self.errors > 0 and (self.error_icon .. self.errors .. "")
    end,
    hl = { fg = colors.maroon },
  },
  {
    provider = function(self)
      return self.warnings > 0 and (self.warn_icon .. self.warnings .. "")
    end,
    hl = { fg = colors.yellow },
  },
  {
    provider = function(self)
      return self.hints > 0 and (self.hint_icon .. self.hints .. "")
    end,
    hl = { fg = colors.sky },
  },
}

local LSPActive = {
  condition = conditions.lsp_attached,
  update = { 'LspAttach', 'LspDetach' },

  provider = function()
    local names = {}
    for i, server in pairs(vim.lsp.get_clients({ bufnr = 0 })) do
      table.insert(names, server.name)
    end
    return " " .. table.concat(names, " ") .. " "
  end,
  hl = { fg = colors.overlay1 },
}

local FileType = {
  provider = function()
    return string.lower(vim.bo.filetype) .. " "
  end,
  hl = { fg = colors.overlay1 }
}

local FileName = {
  init = function(self)
    local mode = vim.fn.mode(1):sub(1, 1)
    self.mode_color = mode_colors[mode] or colors.lavender
  end,
  {
    provider = "",
    hl = function()
      return {
        fg = colors.surface0,
        bg = colors.mantle
      }
    end,
  },
  {
    provider = function(self)
      local filename = vim.fn.fnamemodify(self.filename, ":.")
      if filename == "" or filename == " " then return " [No Name] " end
      if not conditions.width_percent_below(#filename, 0.25) then
        filename = vim.fn.pathshorten(filename)
      end
      return " " .. filename .. " "
    end,
    hl = function(self)
      return {
        fg = self.mode_color,
        bg = colors.surface0,
        bold = true,
      }
    end,
  },
}

local WorkDir = {
  init = function(self)
    local mode = vim.fn.mode(1):sub(1, 1)
    self.mode_color = mode_colors[mode] or colors.lavender
  end,
  {
    provider = "",
    hl = function(self)
      return {
        fg = self.mode_color,
        bg = colors.surface0
      }
    end,
  },
  {
    provider = function()
      local icon = " "
      local cwd = vim.fn.getcwd(0)
      cwd = vim.fn.fnamemodify(cwd, ":~")
      if not conditions.width_percent_below(#cwd, 0.25) then
        cwd = vim.fn.pathshorten(cwd)
      end
      local trail = cwd:sub(-1) == '/ ' and '' or "/ "
      return icon .. cwd .. trail
    end,
    hl = function(self)
      return {
        fg = colors.mantle,
        bg = self.mode_color,
        bold = true
      }
    end
  },
  {
    provider = "",
    hl = function(self)
      return {
        fg = self.mode_color,
        bg = colors.mantle
      }
    end,
  },
}

local Statusline = {
  hl = { bg = colors.mantle },
  Mode,
  Ruler,
  Git,
  { provider = "%=" },
  Diagnostics,
  { provider = "%=" },
  LSPActive,
  {
    init = function(self)
      self.filename = vim.api.nvim_buf_get_name(0)
    end,
    FileIcon,
    FileType,
    FileName,
    WorkDir
  }
}

heirline.setup({
  statusline = Statusline,
  tabline = BufferLine,
})
