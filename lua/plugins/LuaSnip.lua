local snippath = vim.fn.stdpath("config") .. "/lua/snippets"

return {
    "L3MON4D3/LuaSnip",
	version = "<CurrentMajor>.*", -- follow latest release.
    config = function()
        require("luasnip.loaders.from_lua").lazy_load(
            { paths = snippath }
        )
    end,
}
