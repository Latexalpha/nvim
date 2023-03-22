local g = vim.g

-- Set `mapleader` before lazy so mappings are correct
g.mapleader = " " 
g.maplocalleader = " "

-- disable netrw at the very start of init.lua
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- set the Nvim python virtual environment
g.python3_host_prog = '/home/latex/.local/share/virtualenvs/nvim-f7Xq2-eg/bin/python'
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.loaded_node_provider = 0

-- VimTeX settings
g.tex_flavor = 'latex'
g.vimtex_compiler_method = 'latexmk'
g.vimtex_view_method = 'zathura'
g.vimtex_view_general_viewer = 'zathura'
g.vimtex_compiler_progname = 'nvr'