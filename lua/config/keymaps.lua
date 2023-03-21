vim.g.mapleader = " "

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("t", "jk", "C-\\><C-n>")
