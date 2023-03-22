local g = vim.g

-- Set `mapleader` before lazy so mappings are correct
g.mapleader = " " 
g.maplocalleader = " "

-- disable netrw at the very start of init.lua
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- set the Nvim python virtual environment
g.python3_host_prog = 'C:/Users/heihi/.virtualenvs/nvim-0P_60ueU/Scripts/python'
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.loaded_node_provider = 0

-- VimTeX settings
g.tex_flavor = 'latex'
g.vimtex_compiler_method = 'latexmk'
-- pdf reader settings
g.vimtex_view_general_viewer = 'SumatraPDF'
g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
g.vimtex_view_general_options_latexmk = '-reuse-instance'
