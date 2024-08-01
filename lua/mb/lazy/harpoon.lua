return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon [a]dd' })

    vim.keymap.set('n', '<leader>j', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon select 1st' })
    vim.keymap.set('n', '<leader>k', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon select 2nd' })
    vim.keymap.set('n', '<leader>l', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon select 3rd' })
    vim.keymap.set('n', '<leader>;', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon select 4th' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-M-P>', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon select previous' })
    vim.keymap.set('n', '<C-M-N>', function()
      harpoon:list():next()
    end, { desc = 'Harpoon select next' })

    vim.keymap.set('n', '<leader>o', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harp[o]on window toggle' })
  end,
}
