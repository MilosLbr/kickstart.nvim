return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',
    'mfussenegger/nvim-dap-python',
  },

  config = function()
    local dap, dapui = require 'dap', require 'dapui'
    dapui.setup()

    -- auto open/close dap-ui on dap events
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

    -- keymaps
    vim.keymap.set('n', '<F5>', function()
      dap.continue()
    end)
    vim.keymap.set('n', '<F10>', function()
      dap.step_over()
    end)
    vim.keymap.set('n', '<F11>', function()
      dap.step_into()
    end)
    vim.keymap.set('n', '<S-F11>', function()
      dap.step_out()
    end)
    vim.keymap.set('n', '<F9>', function()
      dap.toggle_breakpoint()
    end)
    vim.keymap.set('n', '<C-F10>', function()
      dap.run_to_cursor()
    end)
    vim.keymap.set('n', '<C-S-F10>', function()
      dap.goto_() -- go to cursor
    end)

    -- python
    local debugpy_path = vim.fn.stdpath 'data' .. '\\mason\\packages\\debugpy\\venv\\Scripts\\python.exe'

    require('dap-python').setup(debugpy_path)
  end,
}