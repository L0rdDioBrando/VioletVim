return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "jay-babu/mason-nvim-dap.nvim",
    "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require "dap"
      dap.adapters.go = {
        type = 'executable';
        command = 'node';
        args = {os.getenv('HOME') .. '/dev/golang/vscode-go/extension/dist/debugAdapter.js'};
      }
      dap.configurations.go = {
        {
          type = 'go';
          name = 'Debug';
          request = 'launch';
          showLog = false;
          program = "${file}";
          dlvToolPath = vim.fn.exepath('dlv')
        },
      }
end,
}