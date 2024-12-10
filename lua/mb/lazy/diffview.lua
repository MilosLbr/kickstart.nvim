return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {
      enhanced_diff_hl = true,
    }

    vim.keymap.set('n', '<leader>do', ':DiffviewOpen<CR>', { desc = 'DiffviewOpen' })
    vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', { desc = 'DiffviewClose' })

    vim.api.nvim_set_hl(0, 'DiffviewDiffText', { bg = '#265e4d' })
  end,
}
