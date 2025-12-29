-- Function to detect environment
local M = {}
local _env	-- cached value

-- Function
local function detect_environment()
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

-- Function as API
function M.detect()
  if not _env then
    _env = detect_environment()
  end
  return _env
end

-- Exposed as a module
return M
