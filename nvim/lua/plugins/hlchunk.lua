return {
  {
    "shellRaining/hlchunk.nvim",
	Lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
	  require("hlchunk").setup({
        indent = {
          chars = {
              "¦",
              "┆",
              "┊",
              "┊",
          },
          style = {
              "#FF0000",
              "#7F007F",
              "#7F7F00",
              "#007F00",
              "#007F7F",
              "#00007F",
              "#8B007F",
          },
       	  enable = true
        }
	  })
    end
  }
}
