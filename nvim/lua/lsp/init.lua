-- Add PATH to Language Server
local env = require('my.detect_environment').detect()

if env.is_linux then
  -- Do nothing
elseif env.is_vscode or env.is_wsl then
  -- Do nothing
elseif env.is_windows then
  vim.env.PATH = 'C:\\Program Files\\lua-language-server\\bin' .. ';' .. vim.env.PATH
end


-- Configure LSP
vim.diagnostic.config({
  virtual_text = true
})

-- Marker of the workspace
vim.lsp.config('*', {
  root_markers = { '.git' },
})


-- load lsp modules
local dirname = vim.fn.stdpath('config') .. '/lua/lsp'
local lsp_names = {}

for file, ftype in vim.fs.dir(dirname) do
  -- Gather lua files except init.lua
  if ftype == 'file' and vim.endswith(file, '.lua') and file ~= 'init.lua' then
    local lsp_name = file:sub(0, -5) -- fname without '.lua'
    -- load the lua file
    local ok, result = pcall(require, 'lsp.' .. lsp_name)
    if ok then
      vim.lsp.config(lsp_name, result)
      table.insert(lsp_names, lsp_name)
    else
      -- Fail to load
      vim.notify('Error loading LSP: ' .. lsp_name .. '\n' .. result, vim.log.levels.WARN)
    end
  end
end

-- Enable loaded lua files
vim.lsp.enable(lsp_names)
