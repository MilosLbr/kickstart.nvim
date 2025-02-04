return {
  'airblade/vim-rooter',
  config = function()
    vim.g.rooter_patterns = { 'tsconfig.base.json', '*.sln', '.git', '*.sql' }
  end,
}
