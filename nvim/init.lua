require('core.options')

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  require('core.colors'),
  require('plugins.yanky'),
  require('plugins.neo-tree'),
  require('plugins.mason'),
  require('plugins.mason-lspconfig'),
  require('plugins.cmp'),
  require('plugins.lsp-config'),
  require('plugins.gitsigns'),
  require('plugins.heirline'),
  require('plugins.autopairs'),
  require('plugins.buffer-line'),
  require('plugins.bufdelete'),
  require('plugins.treesitter'),
  require('plugins.dashboard'),
  require('plugins.dap'),
  require('plugins.nvim-web-devicons'),
  require('plugins.notify'),
  require('plugins.which-key'),
  require('plugins.trouble'),
  require('plugins.fzf'),
  require('plugins.flash'),
})

require('core.keymaps')