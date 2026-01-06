-- Remove simple and obvious commands from command-line history
local group = vim.api.nvim_create_augroup("CmdwinClean", { clear = true })

vim.api.nvim_create_autocmd("CmdwinEnter", {
  group = group,
  callback = function()
    vim.cmd([[g/^qa\?!\?$/d]])
    vim.cmd([[g/^wq\?a\?!\?$/d]])
  end,
  desc = "Remove simple and obvious commands from command-line history",
})
