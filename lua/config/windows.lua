local g = vim.g

-- set the Nvim python virtual environment
g.python3_host_prog = 'C:/Users/heihi/.virtualenvs/nvim-0P_60ueU/Scripts/python'

-- VimTeX settings
g.tex_flavor = 'latex'
g.vimtex_compiler_method = 'latexmk'
-- g.vimtex_view_general_viewer = 'SumatraPDF' -- pdf reader settings
-- g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'

vim.o.shell = vim.fn.executable('pwsh') and 'pwsh' or 'powershell'

require("nvim-treesitter.install").compilers = { "clang" }

vim.keymap.set("n", "<leader>lv",
    function()
        local cwd = vim.fn.getcwd()
        local line = vim.api.nvim_win_get_cursor(0)[1]
        -- vim.cmd("call jobstart(\'powershell /s /c \"SumatraPDF -reuse-instance -forward-search \"" .. cwd .. "\\main.tex\" " .. line .. " \"" .. cwd .. "\\main.pdf\"\"\')")
        vim.cmd("call jobstart(\'powershell /c \"SumatraPDF -reuse-instance -forward-search \"" .. cwd .. "\\main.tex\" " .. line .. " \"" .. cwd .. "\\main.pdf\"\"\')")
    end,
    {desc = "Windows LaTeX View"}
)
