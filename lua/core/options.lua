vim.opt.termguicolors = true -- Enable 24-bit colors

vim.o.mouse = "a"            -- Enable mouse
vim.opt.mousefocus = true    -- Enable mouse focus

vim.g.mapleader = " "        -- <leader> key
vim.g.maplocalleader = " "

vim.opt.signcolumn = "yes" -- Left Column Margin

vim.g.autoformat = true    -- Enable formatters

vim.loader.enable()        -- Fast start

vim.opt.ignorecase = true  -- Ignores case during search
vim.opt.smartcase = true

vim.opt.number = true             -- Make line numbers default
vim.opt.relativenumber = true     -- Show the line number relative to the line with the cursor in front of each line

vim.opt.cursorline = true         -- Highlight current line

vim.g.vim_pack_job_threads = 50   -- Fast plugins update

vim.opt.timeout = true            -- Timeout
vim.opt.timeoutlen = 1500         -- Time in milliseconds to wait for a mapped sequence to complete

vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
    ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
  },
} -- Fix clipboard in SSH

vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    prefix = "●",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "if_many",
  },
})

vim.opt.showtabline = 2       -- The tabpage labels will always be displayed
vim.opt.tabstop = 2           -- Tab width
vim.opt.shiftwidth = 2        -- Number of columns that make up one level of (auto)indentation
vim.opt.softtabstop = 2       -- Create soft tab stops
vim.opt.expandtab = true      -- Use the appropriate number of spaces to insert <Tab>

vim.opt.swapfile = false      -- Disable swap files

vim.o.showmode = false        -- Don't show the mode

vim.opt.laststatus = 3        -- Global statusline

vim.g.gc_threshold = 10000000 -- Garbage Collector
vim.g.gc_sweep_fwlink = 10000000

vim.opt.wrap = false         -- Disable line wrapping

vim.opt.undofile = true      -- Enable undo/redo changes even after closing and reopening a file

vim.g.loaded_netrw = 1       -- Disable netrw
vim.g.loaded_netrwPlugin = 1 -- Disable :Explore command
