return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
	  require("hlchunk").setup({
        indent = {
          chars = {
              "│",
              "¦",
              "┆",
              "┊",
          },
          style = {
              "#7F0000",
              "#FF007F",
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
