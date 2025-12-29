return {
  {
    "shellRaining/hlchunk.nvim",
	Lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
	  require("hlchunk").setup({
        indent = {
       	  enable = true,
          chars = {
              "|",
              "|",
              "|",
              "|",
          },
          style = {
              vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
          },
        },

        line_num = {
		  enable = true,
          style = "#00e0e0",
        },

	  })
    end
  }
}
