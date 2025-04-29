-- Setting to use Japanese
vim.opt.iminsert = 0
vim.opt.imsearch = 0
vim.api.nvim_set_keymap('i', '<ESC>', '<ESC>:set iminsert=0<CR>', { silent = true })
vim.opt.formatoptions:append('mM')
vim.opt.ambiwidth = 'double'


--
-- IME Control
-- - Using zenhan. https://qiita.com/iuchi/items/9ddcfb48063fc5ab626c
--

-- Function to detect environment
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

local env = detect_environment()

-- IME is off when changing mode
if env.is_linux then
  vim.api.nvim_set_keymap("i", "<silent> <Esc>", "<Esc>:call system('fcitx5-remote -c')<CR>", { noremap = true })
elseif env.is_vscode or env.is_wsl then
  vim.o.shell = "/usr/bin/bash --login"
  vim.cmd('autocmd InsertLeave * :call system("zenhan.exe 0")')
  vim.cmd('autocmd CmdlineLeave * :call system("zenhan.exe 0")')
elseif env.is_windows then
  vim.o.shell = "cmd.exe"
  vim.cmd("autocmd InsertLeave * :call system('zenhan 0')")
  vim.cmd("autocmd CmdlineLeave * :call system('zenhan 0')")
end


-- Clipboard
vim.opt.clipboard:append('unnamedplus')

-- Character code
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = { 'iso-2022-jp', 'euc-jp', 'cp932', 'sjis', 'utf-8' }
