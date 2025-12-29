-- Show help in the right.
local grp = vim.api.nvim_create_augroup("HelpRight", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = grp,
  pattern = { "help", "myhelp" },
  desc = "Move help windows to the right.",
  callback = function()
    -- Move focused window to right.
    vim.cmd("wincmd L")
    -- Fix width of the window.
    vim.cmd("vertical resize 80")
  end,
})
