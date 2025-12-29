-- Handler to add each filetype configuration.
-- Configuration for each filetype are stored in my/filetypes.lua
local my_filetype = require('my.filetypes')

vim.api.nvim_create_augroup('vimrc_augroup', {})
vim.api.nvim_create_autocmd('FileType', {
  group = 'vimrc_augroup',
  pattern = '*',
  callback = function(args) my_filetype[args.match]() end
})


-- Force to treat myhelp.txt as help.
vim.filetype.add({
  pattern = {
    [os.getenv("XDG_CONFIG_HOME") .. '/nvim/doc/.*%.txt'] = 'help',
  },
})
