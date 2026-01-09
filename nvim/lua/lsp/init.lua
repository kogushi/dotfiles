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

-- augroup for this config file
local augroup = vim.api.nvim_create_augroup('lsp/init.lua', {})

vim.api.nvim_create_autocmd('LspAttach', {
  group = augroup,
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

    vim.keymap.set('n', 'grd', function()
      vim.lsp.buf.definition()
    end, { buffer = args.buf, desc = 'vim.lsp.buf.definition()' })

    vim.keymap.set('n', '<space>i', function()
      vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
    end, { buffer = args.buf, desc = 'Format buffer' })
  end,
})

vim.lsp.config('*', {
  root_markers = { '.git' },
})

-- load lsp/lua_ls.lua
local lua_ls_opts = require('lsp.lua_ls')
vim.lsp.config('lua_ls', lua_ls_opts)
vim.lsp.enable('lua_ls')
