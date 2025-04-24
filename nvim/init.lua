-- Allow moving to buffer even the current is unsaved.
vim.o.hidden = true

-- No backup files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.scrolloff = 5
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.nrformats = octal

-- Search config
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.hlsearch = true

-- Status config 
vim.opt.laststatus = 3


-- Package Manager
require("package_manager.lazy")

-- Plugin configurations
require("plugin_configs.telescope")


-- Each configuration
-- require("gui-init")
require("windows")
require("yank")



-- Choosing colorscheme
vim.cmd[[ colorscheme nightfox ]]
--vim.cmd[[ colorscheme tokyonight-moon ]]

