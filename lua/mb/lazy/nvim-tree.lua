return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {},
  config = function()
    vim.keymap.set('n', '<leader>pv', ':NvimTreeToggle<CR>', { desc = 'nvim-tree: Toggle', noremap = true })

    require('nvim-tree').setup {
      disable_netrw = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
      },
      diagnostics = {
        enable = true,
        icons = {
          hint = '',
          info = '',
          warning = '',
          error = '',
        },
      },
      view = {
        relativenumber = true,
        adaptive_size = true,
      },
      renderer = {
        highlight_git = 'icon',
        highlight_diagnostics = 'icon',
        indent_markers = {
          enable = true,
        },
      },
    }
  end,
}
