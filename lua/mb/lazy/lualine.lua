return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = 'material',
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'filename', 'diagnostics' },
      lualine_c = { 'searchcount', 'selectioncount' },
    },
  },
}
