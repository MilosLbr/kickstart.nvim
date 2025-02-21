-- Collection of various small independent plugins/modules
return {
  'echasnovski/mini.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
  config = function()
    local spec_treesitter = require('mini.ai').gen_spec.treesitter
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup {
      custom_textobjects = {
        f = spec_treesitter { -- function
          a = { '@function.outer', '@method_declaration.outer', '@method_definition.outer' },
          i = { '@function.inner', '@method_declaration.inner', '@method_definition.inner' },
        },
        i = spec_treesitter { -- loop or if
          a = { '@conditional.outer', '@loop.outer' },
          i = { '@conditional.inner', '@loop.inner' },
        },
      },
      n_lines = 500,
    }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim

    require('mini.starter').setup()
  end,
}
