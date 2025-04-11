return {
  'vim-test/vim-test',
  config = function()
    vim.g['test#csharp#runner'] = 'dotnettest'
    vim.g['test#strategy'] = 'neovim'
    vim.g['test#neovim#start_normal'] = 1 -- open terminal in normal mode (default is insert)

    local keymap = vim.keymap

    keymap.set('n', '<leader>tn', ':TestNearest<CR>', { noremap = true, desc = 'Run the nearest test' })
    keymap.set('n', '<leader>tf', ':TestFile<CR>', { noremap = true, desc = 'Run all the tests in the current file' })
    keymap.set('n', '<leader>ts', ':TestSuite<CR>', { noremap = true, desc = 'Run the entire test suite' })
    keymap.set('n', '<leader>tl', ':TestLast<CR>', { noremap = true, desc = 'Re-run the last test' })
    keymap.set('n', '<leader>tv', ':TestVisit<CR>', { noremap = true, desc = 'Jump to the last file' })
  end,
}
