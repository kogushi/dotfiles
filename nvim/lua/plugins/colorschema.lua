return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
	config = function()
		require('configs.color')
	end,
  },
--  {
--    "folke/tokyonight.nvim",
--    lazy = false,
--    priority = 1000,
--    opts = {},
--  }
}
