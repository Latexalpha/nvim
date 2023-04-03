local g = vim.g

-- set the Nvim python virtual environment
vim.cmd([[
    if has("nvim") && !empty($CONDA_PREFIX)
        let g:python3_host_prog = $CONDA_PREFIX . "/bin/python"
]])
-- VimTeX settings
g.tex_flavor = 'latex'
g.vimtex_compiler_method = 'latexmk'
g.vimtex_view_method = 'zathura'
g.vimtex_view_general_viewer = 'zathura'
g.vimtex_compiler_progname = 'nvr'
