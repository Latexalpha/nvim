-- disable netrw at the very start of init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set the Nvim python virtual environment
vim.g.python3_host_prog = '/home/latex/.local/share/virtualenvs/nvim-f7Xq2-eg/bin/python'
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
-- Set `mapleader` before lazy so mappings are correct
vim.g.mapleader = " " 
vim.g.maplocalleader = " "

-- VimTeX settings
vim.g.tex_flavor = 'latex'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_compiler_progname = 'nvr'

-- clipboard
vim.opt.clipboard = "unnamedplus"

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

vim.cmd.colorscheme "catppuccin"

-- personal specs
require("config.keymaps")
require("config.options")
