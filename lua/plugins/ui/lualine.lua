return {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    dependencies = {
    	"nvim-web-devicons",
    },
    config = function()
	require("lualine").setup()
    end,
}
