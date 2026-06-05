-- General
vim.keymap.set({ "n", "v", }, "<C-s>", ":w!<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>u", ":lua vim.pack.update()<cr>", { desc = "Update all plugins" })
vim.keymap.set("n", "<C-k>", ":wincmd k<cr>", { desc = "Window up" })
vim.keymap.set("n", "<C-j>", ":wincmd j<cr>", { desc = "Window down" })
vim.keymap.set('n', "<C-h>", ":wincmd h<cr>", { desc = "Windoww left" })
vim.keymap.set('n', "<C-l>", ":wincmd l<cr>", { desc = "Window right" })
vim.keymap.set("n", "<A-a>", "ggVG", { desc = "Select all" })
vim.keymap.set("n", "T", ":terminal<cr>", { desc = "Open terminal" })

-- Buffers
vim.keymap.set("n", "<leader>bb", ":bd<cr>", { desc = "Close active buffer" })
vim.keymap.set("n", "<leader>bh", ":bp<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>bl", ":bn<cr>", { desc = "Next Buffer" })

-- FzfLua
vim.keymap.set("n", "<leader>fg", ":FzfLua live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", ":FzfLua buffers<cr>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>ff", ":FzfLua files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fr", ":FzfLua oldfiles<cr>", { desc = "Find old files" })
vim.keymap.set("n", "<leader>fz", ":FzfLua zoxide<cr>", { desc = "Find zoxide history" })

-- Yazi
vim.keymap.set("n", "<leader>s", ":Yazi<cr>", { desc = "Open yazi" })

-- Aerial
vim.keymap.set("n", "<leader>aa", ":AerialOpen<cr>", { desc = "Toggle aerial" })
vim.keymap.set("n", "<leader>af", ":AerialNavToggle<cr>", { desc = "Open/Close aerial float" })
vim.keymap.set("n", "<leader>as", function()
  require("aerial").fzf_lua_picker({
    profile = "ivy",
  })
end, { desc = "Aerial Search" })

-- Oil
vim.keymap.set("n", "<leader>tr", ":Oil<cr>", { desc = "Open oil.nvim" })
vim.keymap.set("n", "<leader>tt", ":Oil --float<cr>", { desc = "Open oil float" })

-- Gitsigns
vim.keymap.set("n", "<leader>gl", "&diff ? 'gl' : ':Gitsigns next_hunk<cr>'", { expr = true, desc = "Next git hunk" })
vim.keymap.set("n", "<leader>gg", "&diff ? 'gh' : ':Gitsigns prev_hunk<cr>'", { expr = true, desc = "Prev git hunk" })
vim.keymap.set("n", "<leader>gu", ":Gitsigns undo_stage_hunk<cr>", { desc = "Undo stage hunk" })
