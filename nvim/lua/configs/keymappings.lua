-- Common (global) Keymappings

-- Using space as <Leader> <LocalLeader>
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

-- Disable search highlight by ESCx2
vim.api.nvim_set_keymap('n', '<ESC><ESC>', ':nohl<CR>', { noremap = true, silent = true })
