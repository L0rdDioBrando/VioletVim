vim.opt.termguicolors = true -- Enable 24-bit colors

vim.o.mouse = "a" -- Enable mouse
vim.opt.mousefocus = true

vim.g.mapleader = " " -- <leader> key
vim.g.maplocalleader = " "

vim.opt.signcolumn = "yes" -- Left Column Margin

vim.g.autoformat = true -- Enable formatters

vim.loader.enable() -- Fast start

vim.opt.ignorecase = true -- Ignores case during search
vim.opt.smartcase = true

vim.opt.number = true -- Make line numbers default
vim.opt.relativenumber = true

vim.opt.cursorline = true -- Highlight current line

vim.g.lspconfig_silent = true

vim.g.vim_pack_job_threads = 50 -- Fast plugins update

vim.opt.equalalways = false -- Idk

vim.opt.timeout = true -- Timeout
vim.opt.timeoutlen = 100

vim.opt.clipboard = "unnamedplus" -- Clipboard

-- Indent settings
vim.opt.showtabline = 2
vim.opt.tabstop = 2 -- Tab width
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.swapfile = false -- Disable swap files

vim.o.showmode = false -- Don't show the mode

vim.opt.laststatus = 3 -- Global statusline

vim.g.gc_threshold = 10000000 -- Garbage Collector
vim.g.gc_sweep_fwlink = 10000000
