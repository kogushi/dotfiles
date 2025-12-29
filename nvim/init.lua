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

-- Status/Command line config
vim.opt.laststatus = 3	-- Global Status line in neovim
vim.opt.cmdheight = 3


-- Move to home directory
vim.cmd([[
  autocmd VimEnter * silent! execute 'cd ~'
]])

-- Remove space at EOL
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.lua", "*.vim", "*.yaml" },
  command = [[%s/\s\+$//e]],
})

-- neovide configurations
if vim.g.neovide then
  require("gui-init")
end


-- Package Manager
require("package_manager.lazy")


-- Each configuration
require ("configs.keymappings")
require ("configs.yank")
require ("configs.japanese")
require ("configs.terminal")
require ("configs.filetypes")
require ("configs.helpers")
