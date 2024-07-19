return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = 'material',
    sections = {
      lualine_a = { 'mode', { 'buffers', max_length = vim.o.columns * 2 / 4 } },
      lualine_c = { 'filename', 'searchcount', 'selectioncount' },
    },
  },
}
