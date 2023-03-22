local opt = vim.opt

-- clipboard
opt.clipboard = "unnamedplus"

-- number line
opt.relativenumber = true
opt.number = true
-- indent
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
-- wrap
opt.wrap = false
-- cursor
opt.cursorline = true
-- mouse
opt.mouse:append("a")
-- new window location
opt.splitright = true
opt.splitbelow = true
-- search
opt.ignorecase = true
opt.smartcase = true
-- true colors
opt.termguicolors = true
opt.signcolumn = "yes"
-- add for plugin indent-blankline
opt.list = true
opt.listchars:append "eol:↴"

