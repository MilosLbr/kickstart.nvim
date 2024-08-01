--  See `:help vim.keymap.set()`
local keymap = vim.keymap.set

-- NOTE: Normal mode

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Resize with arrows
keymap('n', '<C-Up>', ':resize -2<CR>', { silent = true })
keymap('n', '<C-Down>', ':resize +2<CR>', { silent = true })
keymap('n', '<C-Left>', ':vertical resize -2<CR>', { silent = true })
keymap('n', '<C-Right>', ':vertical resize +2<CR>', { silent = true })

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>zz')
keymap('n', '<S-h>', ':bprevious<CR>zz')

-- Move text up and down
keymap('n', '<A-j>', ':m .+1<CR>==')
keymap('n', '<A-k>', ':m .-2<CR>==')

-- Center the view when navigating
keymap('n', '<C-d>', '<C-d>zz')
keymap('n', '<C-u>', '<C-u>zz')
keymap('n', 'G', 'Gzz')
keymap('n', '<C-o>', '<C-o>zz')
keymap('n', '<C-i>', '<C-i>zz')

-- NOTE: Insert mode

-- Press jk fast to exit insert mode
keymap('i', 'jk', '<ESC>')
keymap('i', 'kj', '<ESC>')

-- NOTE: Visual mode

-- Stay in indent mode
keymap('v', '<', '<gv^')
keymap('v', '>', '>gv^')

-- Move text up and down
keymap('v', '<A-j>', ":m '>+1<CR>gv=gv")
keymap('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Keep copied text after pasting instead of replacing the paste registry
keymap('v', 'p', '"_dP')

-- NOTE: Visual block mode

-- Move text up and down
keymap('x', 'K', ":m '<-2<CR>gv=gv")
keymap('x', 'J', ":m '>+1<CR>gv=gv")
keymap('x', '<A-j>', ":m '>+1<CR>gv=gv")
keymap('x', '<A-k>', ":m '<-2<CR>gv=gv")

-- Close unchanged buffers
function _G.CloseUnchangedBuffers()
  local currentBuf = vim.api.nvim_get_current_buf()
  local allBuffers = vim.api.nvim_list_bufs()

  for _, buffer in ipairs(allBuffers) do
    if vim.api.nvim_buf_is_loaded(buffer) and not vim.bo[buffer].modified and buffer ~= currentBuf then
      vim.api.nvim_buf_delete(buffer, {})
    end
  end
end

keymap('n', '<leader>cu', ':lua CloseUnchangedBuffers()<CR>', { desc = 'Close unchanged buffers' })
