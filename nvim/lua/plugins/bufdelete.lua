return {
  "famiu/bufdelete.nvim",
  event = "VeryLazy",
  config = function()
    vim.keymap.set('n', 'bd', function()
      require('bufdelete').bufdelete(0, false)
    end, { desc = 'Delete active buffer' })
  end
}