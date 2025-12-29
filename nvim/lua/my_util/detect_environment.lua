-- Function to detect environment
local M = {}

-- Function as API
function M.detect()
  local env = {}

  -- Linux
  env.is_linux = vim.fn.has("unix") == 1 and not vim.fn.has("wsl") == 1

  -- Windows
  env.is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

  -- WSL
  env.is_wsl = vim.fn.has("wsl") == 1

  -- VSCode Neovim
  env.is_vscode = vim.g.vscode ~= nil

  return env
end

return M
