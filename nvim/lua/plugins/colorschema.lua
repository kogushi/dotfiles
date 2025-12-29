return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,

	config = function()
      -- Apply the colorscheme
      vim.cmd[[ colorscheme nightfox ]]

	  -- Color of window separator
      local _palette = require("nightfox.palette").load("nightfox")
      vim.api.nvim_set_hl(0, "WinSeparator", {
        fg = _palette.fg1,
        bg = _palette.bg1,
        bold = true
      })

      -- For old plugins
      vim.api.nvim_set_hl(0, "VertSplit", {
        fg = _palette.fg1,
        bg = _palette.bg1,
      })
    end,
  },
--  {
--    "folke/tokyonight.nvim",
--    lazy = false,
--    priority = 1000,
--    opts = {},
--  }
}
