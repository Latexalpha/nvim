-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- use lazy.nvim to manage plugins
require("lazy").setup({
    spec = {
        { import = "plugins" },
        { import = "plugins.ui" },
        { import = "plugins.lsp" },
    }
})

-- colorscheme
vim.cmd.colorscheme "catppuccin"

-- personal specs
require("config.keymaps")
require("config.options")
