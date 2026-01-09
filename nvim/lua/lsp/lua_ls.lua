return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  on_init = function(client)
    -- 長いので略
  end,
  settings = {
    Lua = {
      diagnostics = {
        unusedLocalExclude = { '_*' }
      }
    }
  }
}
