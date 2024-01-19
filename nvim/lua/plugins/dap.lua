return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup({})

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = { "go" },
    config = function()
      require("dap-go").setup({})
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^3",
    ft = { "rust" },
    config = function()
      vim.g.rustaceanvim = function()
        local codelldb = require("mason-registry").get_package("codelldb")
        local extension_path = codelldb:get_install_path() .. "/extension/"
        local codelldb_path = extension_path .. "adapter/codelldb"
        local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

        return {
          dap = {
            adapter = require('rustaceanvim.config').get_codelldb_adapter(codelldb_path, liblldb_path),
          },
        }
      end
    end,
  }
}
