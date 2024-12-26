return {
  'folke/trouble.nvim',
  opts = {
    preview = {
      type = 'float',
      relative = 'editor',
      border = 'rounded',
      title = 'Preview',
      title_pos = 'center',
      position = { 0, 0.5 },
      size = { width = 0.6, height = 0.6 },
      wo = {
        wrap = true,
        linebreak = true,
        number = true,
      },
    },
    modes = {
      -- Customize the lsp_base mode
      lsp_base = {
        win = {
          position = 'bottom',
        },
      },
      symbols = {
        win = {
          position = 'bottom',
        },
      },
    },
  },
  cmd = 'Trouble',
  keys = {
    {
      '<leader>xx',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics (Trouble)',
    },
    {
      '<leader>xX',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Buffer Diagnostics (Trouble)',
    },
    {
      '<leader>cs',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = 'Symbols (Trouble)',
    },
    {
      '<leader>cl',
      '<cmd>Trouble lsp toggle focus=false<cr>',
      desc = 'LSP Definitions / references / ... (Trouble)',
    },
    {
      '<leader>ci',
      '<cmd>Trouble lsp_incoming_calls focus=false<cr>',
      desc = 'LSP incoming calls (Trouble)',
    },
    {
      '<leader>xL',
      '<cmd>Trouble loclist toggle<cr>',
      desc = 'Location List (Trouble)',
    },
    {
      '<leader>xQ',
      '<cmd>Trouble qflist toggle<cr>',
      desc = 'Quickfix List (Trouble)',
    },
  },
}
