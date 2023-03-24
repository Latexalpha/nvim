-- require global settings according to the OS
local BinaryFormat = package.cpath:match("%p[\\|/]?%p(%a+)")
if BinaryFormat == "dll" then
	require("config.g_windows")
    function os.name()
        return "Windows"
    end
elseif BinaryFormat == "so" then
	require("config.g_linux")
    function os.name()
        return "Linux"
    end
end
BinaryFormat = nil

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

local binaryformat = package.cpath:match("%p[\\|/]?%p(%a+)")
if binaryformat == "dll" then
    require 'nvim-treesitter.install'.compilers = { "clang" }
end
binaryformat = nil
