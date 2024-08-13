return {
  'softoika/ngswitcher.vim',
  config = function()
    -- Normal mode mappings
    vim.keymap.set(
      'n',
      '<A-u>',
      ':<C-u>NgSwitchTS<CR>',
      { noremap = true, silent = true, desc = 'Switch to TypeScript file' }
    )
    vim.keymap.set(
      'n',
      '<A-i>',
      ':<C-u>NgSwitchHTML<CR>',
      { noremap = true, silent = true, desc = 'Switch to HTML file' }
    )
    vim.keymap.set(
      'n',
      '<A-o>',
      ':<C-u>NgSwitchCSS<CR>',
      { noremap = true, silent = true, desc = 'Switch to CSS file' }
    )
    vim.keymap.set(
      'n',
      '<A-p>',
      ':<C-u>NgSwitchSpec<CR>',
      { noremap = true, silent = true, desc = 'Switch to Spec file' }
    )

    -- With horizontal split
    vim.keymap.set(
      'n',
      '<A-s><A-u>',
      ':<C-u>SNgSwitchTS<CR>',
      { noremap = true, silent = true, desc = 'Switch to TypeScript file in horizontal split' }
    )
    vim.keymap.set(
      'n',
      '<A-s><A-i>',
      ':<C-u>SNgSwitchHTML<CR>',
      { noremap = true, silent = true, desc = 'Switch to HTML file in horizontal split' }
    )
    vim.keymap.set(
      'n',
      '<A-s><A-o>',
      ':<C-u>SNgSwitchCSS<CR>',
      { noremap = true, silent = true, desc = 'Switch to CSS file in horizontal split' }
    )
    vim.keymap.set(
      'n',
      '<A-s><A-p>',
      ':<C-u>SNgSwitchSpec<CR>',
      { noremap = true, silent = true, desc = 'Switch to Spec file in horizontal split' }
    )

    -- With vertical split
    vim.keymap.set(
      'n',
      '<A-v><A-u>',
      ':<C-u>VNgSwitchTS<CR>',
      { noremap = true, silent = true, desc = 'Switch to TypeScript file in vertical split' }
    )
    vim.keymap.set(
      'n',
      '<A-v><A-i>',
      ':<C-u>VNgSwitchHTML<CR>',
      { noremap = true, silent = true, desc = 'Switch to HTML file in vertical split' }
    )
    vim.keymap.set(
      'n',
      '<A-v><A-o>',
      ':<C-u>VNgSwitchCSS<CR>',
      { noremap = true, silent = true, desc = 'Switch to CSS file in vertical split' }
    )
    vim.keymap.set(
      'n',
      '<A-v><A-p>',
      ':<C-u>VNgSwitchSpec<CR>',
      { noremap = true, silent = true, desc = 'Switch to Spec file in vertical split' }
    )
  end,
}
