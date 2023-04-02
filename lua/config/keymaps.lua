vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap=true, silent=true }

map("i", "jk", "<ESC>")
map("t", "jk", "C-\\><C-n>")

map('n', '<leader>df', vim.diagnostic.open_float, opts)
map('n', '<leader>dp', vim.diagnostic.goto_prev, opts)
map('n', '<leader>dn', vim.diagnostic.goto_next, opts)
map('n', '<leader>ds',vim.diagnostic.setloclist, opts)

-- move selected line / block of text in visual mode
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        map('n', '<leader>rn', vim.lsp.buf.rename, { buffer = args.buf })
    end,
})

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, opts) 
map('n', '<leader>fg', builtin.live_grep, opts)
map('n', '<leader>fb', builtin.buffers, opts)
map('n', '<leader>fh', builtin.help_tags, opts)

map("n", "<leader>tt", "<cmd>TroubleToggle<cr>", opts)
map("n", "<leader>tc", "<cmd>TroubleClose<cr>", opts)

