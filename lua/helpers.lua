local M = {}

-- Find the root directory using Neovim's built-in vim.fs API
function M.find_root_with(pattern)
  return function(fname)
    local dir = vim.fs.dirname(fname)
    local match = vim.fs.find({ pattern }, { upward = true, path = dir })[1]
    return match and vim.fs.dirname(match) or dir
  end
end

return M
