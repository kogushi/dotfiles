-- Common (global) Keymappings

-- Using space as <Leader> <LocalLeader>
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

-- Disable search highlight by ESCx2
vim.api.nvim_set_keymap('n', '<ESC><ESC>', ':nohl<CR>', { noremap = true, silent = true })


-- Key mappting to invoke Telescope	
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
