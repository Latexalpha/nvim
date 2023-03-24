local g = vim.g

-- set the Nvim python virtual environment
g.python3_host_prog = 'C:/Users/heihi/.virtualenvs/nvim-0P_60ueU/Scripts/python'

-- VimTeX settings
g.tex_flavor = 'latex'
g.vimtex_compiler_method = 'latexmk'
g.vimtex_view_general_viewer = 'SumatraPDF' -- pdf reader settings
g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
g.vimtex_view_general_options_latexmk = '-reuse-instance'

require("nvim-treesitter.install").compilers = { "clang" }

