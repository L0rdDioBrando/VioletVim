vim.pack.add { "https://github.com/famiu/bufdelete.nvim" }
vim.keymap.set("n", "bd", function()
  require("bufdelete").bufdelete(0, false)
end, { desc = "Delete active buffer" })
