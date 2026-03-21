-- Buffer-line
vim.keymap.set('n', '<leader>bb', ':bdelete %<CR>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<leader>bo', ':BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>', { desc = 'Close other buffers' })
vim.keymap.set('n', '<leader>bp', ':BufferLinePickClose<CR>', { desc = 'Pick buffer to close' })
vim.keymap.set('n', '<leader>bk', ':BufferLineMovePrev<CR>', { desc = 'Move buffer left' })
vim.keymap.set('n', '<leader>bj', ':BufferLineMoveNext<CR>', { desc = 'Move buffer right' })
vim.keymap.set("n", "<leader>bh", ":BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>bl", ":BufferLineCycleNext<cr>", { desc = "Next Buffer" })

-- FzfLua
vim.keymap.set('n', '<leader>fg', ":FzfLua live_grep<cr>", { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', ":FzfLua buffers<cr>", { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>ff', ':FzfLua files<cr>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fr', ':FzfLua oldfiles<cr>', { desc = 'Find old files' })

-- Basic
vim.keymap.set('n', 'we', ':w!<CR>', { desc = 'Save file' })
vim.keymap.set({ "n", "i", "v" }, "<C-s>", ":w!<cr>", { desc = "Save file with force" })
vim.keymap.set('n', 'wq', ':qa!<CR>', { desc = 'Quit' })
vim.keymap.set('n', 'wr', ':x<CR>', { desc = 'Write & quit' })
vim.keymap.set("n", "f", "<nop>")
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "q/", "<nop>")
vim.keymap.set("n", "q?", "<nop>")

-- NeoTree
vim.keymap.set('n', '<leader>tt', ':Neotree<CR>', { desc = 'Toggle NeoTree' })
vim.keymap.set('n', '<leader>tr', ':Neotree reveal<CR>', { desc = 'Reveal file in tree' })

-- Gitsigns
vim.keymap.set('n', '<leader>gl', "&diff ? 'gl' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
vim.keymap.set('n', '<leader>gg', "&diff ? 'gh' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })
vim.keymap.set('n', '<leader>gs', ':Gitsigns stage_hunk<CR>')
vim.keymap.set('n', '<leader>gu', ':Gitsigns undo_stage_hunk<CR>')

-- Nvim
vim.keymap.set('n', '<Up>', '<nop>')
vim.keymap.set('n', '<Down>', '<nop>')
vim.keymap.set('n', '<Left>', '<nop>')
vim.keymap.set('n', '<Right>', '<nop>')
vim.keymap.set('i', '<Up>', '<nop>')
vim.keymap.set('i', '<Down>', '<nop>')
vim.keymap.set('i', '<Left>', '<nop>')
vim.keymap.set('i', '<Right>', '<nop>')
vim.keymap.set('v', '<Up>', '<nop>')
vim.keymap.set('v', '<Down>', '<nop>')
vim.keymap.set('v', '<Left>', '<nop>')
vim.keymap.set('v', '<Right>', '<nop>')