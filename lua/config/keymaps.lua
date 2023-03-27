vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap=true, silent=true }

map("i", "jk", "<ESC>")
map("t", "jk", "C-\\><C-n>")

map('n', '<leader>df', vim.diagnostic.open_float, opts)
map('n', '<leader>dp', vim.diagnostic.goto_prev, opts)
map('n', '<leader>dn', vim.diagnostic.goto_next, opts)
map('n', '<leader>ds', vim.diagnostic.setloclist, opts)
