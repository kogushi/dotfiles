-- Japanese setting
vim.opt.iminsert = 0
vim.opt.imsearch = 0
vim.api.nvim_set_keymap('i', '<ESC>', '<ESC>:set iminsert=0<CR>', { silent = true })
vim.opt.formatoptions:append('mM')
vim.opt.ambiwidth = 'double'

-- For MS Windows
vim.opt.clipboard:append('unnamed')
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = { 'iso-2022-jp', 'euc-jp', 'cp932', 'sjis', 'utf-8' }
