-- Buffers
vim.keymap.set("n", "<leader>bb", ":bd<cr>", { desc = "Close active buffer" })
vim.keymap.set("n", "<leader>bd", ":Bdelete!<cr>", { desc = "Close buffer no save" })
vim.keymap.set("n", "<leader>bh", ":bp<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>bl", ":bn<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bn", ":FzfLua buffers<cr>", { desc = "Go to ..." })

-- FzfLua
vim.keymap.set("n", "<leader>fg", ":FzfLua live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", ":FzfLua buffers<cr>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>ff", ":FzfLua files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fr", ":FzfLua oldfiles<cr>", { desc = "Find old files" })
vim.keymap.set("n", "<leader>fz", ":FzfLua zoxide<cr>", { desc = "Find zoxide history" })

-- Neotest
vim.keymap.set("n", "<leader>er", function() neotest.run.run() end, { desc = "Run Nearest Test" })
vim.keymap.set("n", "<leader>ee", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run File" })
vim.keymap.set("n", "<leader>es", function() neotest.summary.toggle() end, { desc = "Toggle Summary" })
vim.keymap.set("n", "<leader>eo", function() neotest.output.open({ enter = true }) end, { desc = "Show Output" })
vim.keymap.set("n", "<leader>ed", function() neotest.diagnostic.enable() end, { desc = "Show Diagnostics" })

-- Dap
vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end, { desc = "Debug: Start/Continue" })
vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end,
  { desc = "Debug: Toggle Breakpoint" })
vim.keymap.set("n", "<leader>di", function() require("dap").step_into() end, { desc = "Debug: Step Into" })
vim.keymap.set("n", "<leader>do", function() require("dap").step_over() end, { desc = "Debug: Step Over" })
vim.keymap.set("n", "<leader>dt", function() require("dap").terminate() end, { desc = "Debug: Terminate" })
vim.keymap.set("n", "<leader>du", function() require("dapui").toggle() end, { desc = "Debug: Toggle UI" })
vim.keymap.set("n", "<leader>dgt", function() require("dap-go").debug_test() end, { desc = "Debug: Go Test" })
vim.keymap.set("n", "<leader>dgl", function() require("dap-go").debug_last_test() end, { desc = "Debug: Last Go Test" })

-- Mason
vim.keymap.set("n", "<leader>mm", ":Mason<cr>", { desc = "Open Mason" })
vim.keymap.set("n", "<leader>mu", ":MasonUpdate<cr>", { desc = "Update Mason" })
vim.keymap.set("n", "<leader>mi", ":MasonInstall ", { desc = "Mason install LSP server" })

-- Yanky
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)", { desc = "Put after" })
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)", { desc = "Put before" })
vim.keymap.set("n", "<leader>yh", "<Plug>(YankyPreviousEntry)", { desc = "Previous Yank" })
vim.keymap.set("n", "<leader>yl", "<Plug>(YankyNextEntry)", { desc = "Next Yank" })
vim.keymap.set("n", "<leader>yy", ":YankyRingHistory<cr>", { desc = "Open yanky history" })

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

-- Save
vim.keymap.set({ 'n', 'v' }, '<C-s>', ':w!<cr>')
