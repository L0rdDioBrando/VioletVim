return {
  "rebelot/heirline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local heirline = require("heirline")
    local utils = require("heirline.utils")
    local conditions = require("heirline.conditions")
    
    local macchiato = require("catppuccin.palettes").get_palette("macchiato")

    heirline.load_colors(macchiato)
    
    local Mode = {
      init = function(self)
      self.mode = vim.fn.mode(1):sub(1, 1)

      local mode_colors = {
        n = macchiato.lavender,
        i = macchiato.teal,
        v = macchiato.sky,
        V = macchiato.sky,
        c = macchiato.blue,
        t = macchiato.mauve,
      }
      self.mode_color = mode_colors[self.mode] or macchiato.lavender
      end,

      {
        hl = function(self)
          return { 
            fg = macchiato.base,
            bg = self.mode_color,
            bold = true,
          }
        end,

        provider = function(self)
          return "  " .. (self.mode_names[self.mode] or "UNKNOWN") .. " "
        end,
      },

      {
        provider = "",
        hl = function(self)
          return {
            fg = self.mode_color,
            bg = macchiato.mantle,
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

      hl = { fg = macchiato.peach },

      {
        provider = function(self)
          return "  " .. self.status_dict.head .. " "
        end,
        hl = { bold = true }
      },
    }

    local Position = {
      {
        provider = function()
          local line = vim.fn.line(".")
          local col = vim.fn.col(".")
          return string.format(" %d:%d ", line, col)
        end,
        hl = { fg = macchiato.text, bg = macchiato.mantle, bold = true },
      }
    }

    local Diagnostics = {
      condition = conditions.has_diagnostics,

      static = {
        error_icon = " ",
        warn_icon = " ",
      },

      init = function(self)
        self.errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
        self.warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
        self.hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
        self.info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
      end,

      update = { "DiagnosticChanged", "BufEnter" },

      {
        provider = function(self)
          return self.errors > 0 and (self.error_icon .. self.errors .. " ")
        end,
        hl = { fg = macchiato.maroon },
      },

      {
        provider = function(self)
          return self.warnings > 0 and (self.warn_icon .. self.warnings .. " ")
        end,
        hl = { fg = macchiato.yellow },
      },
    }

    local FileInfo = {
      init = function(self)
        self.filename = vim.fn.expand("%:t")
        if self.filename == "" then self.filename = "[No Name]" end
      end,

      {
        provider = "",
        hl = { fg = macchiato.blue, bg = macchiato.mantle },
      },

      {
        hl = { fg = macchiato.base, bg = macchiato.blue, },
        provider = function(self)
          return "󰈚 " .. self.filename .. " "
        end,
      },
    }

    local FileNameBlock = {
      init = function(self)
        self.pwd = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
      end,

      {
        provider = "", 
        hl = { fg = macchiato.lavender, bg = macchiato.blue },
      },

      {
        hl = { fg = macchiato.base, bg = macchiato.lavender },
        provider = function(self)
          return "󰉖 " .. self.pwd .. " "
        end,
      },
    }

    local Statusline = {
      hl = { bg = macchiato.mantle },

      Mode,
      Git,
      Position,
      { provider = "%=" },
      Diagnostics,
      { provider = "%=" },
      FileInfo,
      FileNameBlock,
    }

    heirline.setup({
      statusline = Statusline,
      opts = {
        disable_winbar_cb = function(args)
          return conditions.buffer_matches({
            buftype = { "nofile", "prompt", "help", "quickfix" },
            filetype = { "^git.*", "fugitive", "TelescopePrompt" },
          }, args.buf)
        end,
      }
    })

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        heirline.load_colors(macchiato)
      end,
    })
  end,
}