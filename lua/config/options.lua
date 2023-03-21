local opt = vim.opt

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

-- clipboard
opt.clipboard:append("unnamedplus")

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
vim.opt.list = true
vim.opt.listchars:append "eol:↴"

