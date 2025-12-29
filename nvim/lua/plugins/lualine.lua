return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    options = {
      globalstatus = true,
    },
	event = 'VeryLazy',
	config = function()
		require('lualine').setup(options)
	end
  }
}

