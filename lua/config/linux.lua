local g = vim.g

-- set the Nvim python virtual environment
g.python3_host_prog = '/home/latex/.local/share/virtualenvs/nvim-f7Xq2-eg/bin/python'

-- VimTeX settings
g.tex_flavor = 'latex'
g.vimtex_compiler_method = 'latexmk'
g.vimtex_view_method = 'zathura'
g.vimtex_view_general_viewer = 'zathura'
g.vimtex_compiler_progname = 'nvr'
