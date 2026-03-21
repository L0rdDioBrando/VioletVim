return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    icons = {
      group = "+",
      separator = "➜",
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    wk.add({
      { "<leader>f", group = "Find (Fzf-lua)" },
      { "<leader>c", group = "Code (LSP)" },
      { "<leader>g", group = "Git" },
      { "<leader>s", group = "Search/System" },
      { "<leader>u", group = "UI/Interface" },
      { "<leader>b", group = "Buffers" },
    })

    wk.add({
      { "<leader>fd", "<cmd>FzfLuafiles<cr>", desc = "Find File" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },

      { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action" },
      { "<leader>cr", vim.lsp.buf.rename, desc = "Rename Symbol" },
      { "<leader>cd", "<cmd>Telescope lsp_definitions<cr>", desc = "Go to Definition" },

      { "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage Hunk" },
      { "<leader>gb", "<cmd>Gitsigns blame_line<cr>", desc = "Blame Line" },

      { "<leader>ns", "<cmd>!sudo nixos-rebuild switch<cr>", desc = "NixOS Rebuild Switch" },
      { "<leader>nc", "<cmd>e ~/dotfiles/configuration.nix<cr>", desc = "Edit Config" },
      { "<leader>nv", "<cmd>e ~/.config/nvim/init.lua<cr>", desc = "Edit Rubedo Init" },
    })
  end,
}