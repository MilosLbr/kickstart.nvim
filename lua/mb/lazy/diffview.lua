return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup()

    vim.keymap.set('n', '<leader>do', ':DiffviewOpen<CR>', { desc = 'DiffviewOpen' })
    vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', { desc = 'DiffviewClose' })
  end,
}
