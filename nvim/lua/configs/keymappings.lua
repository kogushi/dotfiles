-- Common (global) Keymappings

-- Using space as <Leader> <LocalLeader>
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

-- Disable search highlight by ESCx2
vim.api.nvim_set_keymap('n', '<ESC><ESC>', ':nohl<CR>', { noremap = true, silent = true })

-- Key mapping to invoke Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- Invoke my help
vim.keymap.set('n', '<leader>h', ':help myhelp.txt<CR>', { noremap = true, silent = true })

-- Key Mapping to invoke quickhl-vim
vim.keymap.set('n', '<leader>m', '<Plug>(quickhl-manual-this)', { silent = true })
vim.keymap.set('x', '<leader>m', '<Plug>(quickhl-manual-this)', { silent = true })
vim.keymap.set('n', '<leader>M', '<Plug>(quickhl-manual-reset)', { silent = true })
vim.keymap.set('x', '<leader>M', '<Plug>(quickhl-manual-reset)', { silent = true })

-- Buffer move
vim.keymap.set('n', '<leader>p', ':bp<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>n', ':bn<CR>', { noremap = true, silent = true })
