local map = vim.keymap.set

-- Move to previous/next
map('n', '<S-L>', '<Cmd>BufferNext<CR>', { desc = 'Buffer next', noremap = true })
map('n', '<S-H>', '<Cmd>BufferPrevious<CR>', { desc = 'Buffer previous', noremap = true })
-- Pin/unpin buffer
map('n', '<leader>bp', '<Cmd>BufferPin<CR>', { desc = 'Buffer pin', noremap = true })
-- Close buffer
map('n', '<C-A-w>', '<Cmd>BufferClose<CR>', { desc = 'Buffer close', noremap = true })
map(
  'n',
  '<leader>ba',
  '<Cmd>BufferCloseAllButCurrentOrPinned<CR>',
  { desc = 'Buffer close all but current or pinned', noremap = true }
)
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', { desc = 'Buffer picking', noremap = true })

return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default
    icons = {
      pinned = { button = '', filename = true },
    },
  },
}
