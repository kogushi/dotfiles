--
-- Default shell
--

-- Set PowerShell as the default shell
vim.opt.shell = 'powershell'
vim.opt.shellcmdflag = '-command'
vim.opt.shellquote = '"'
vim.opt.shellxquote = ''


-- 
-- Terminal Configurations
--

-- Terminal at the bottom 
vim.keymap.set('n', 'bt', '<cmd>belowright new<CR><cmd>terminal<CR>', { noremap = true, silent = true })

-- Insert mode when terminal launches
local group_terminal = vim.api.nvim_create_augroup('terminal', { clear = true })
vim.api.nvim_create_autocmd({ 'TermOpen' }, {
  pattern = '*',
  group =  group_terminal,
  command = 'startinsert',
})


--
-- Keymapping in Terminal mode
--

-- <esc><esc> => Terminal-normal mode
vim.api.nvim_set_keymap('t', '<ESC><ESC>', '<C-\\><C-N>', { noremap = true, silent = true })
