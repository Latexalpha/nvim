# NeoVim Configuration

## File Structure

```text
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── g_linux.lua
│   │   ├── g_windows.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   └── plugins
│       ├── lsp
│       │   ├── barbecue.lua
│       │   ├── mason.lua
│       │   ├── null-ls.lua
│       │   └── nvim-lspconfig.lua
│       ├── LuaSnip.lua
│       ├── markdown-preview.lua
│       ├── nvim-autopairs.lua
│       ├── nvim-cmp.lua
│       ├── nvim-tree.lua
│       ├── nvim-treesitter.lua
│       ├── telescope.lua
│       ├── ui
│       │   ├── alpha-nvim.lua
│       │   ├── bufferline.lua
│       │   ├── catppuccin.lua
│       │   ├── dressing.lua
│       │   ├── indent-blankline.lua
│       │   ├── lualine.lua
│       │   ├── noice.lua
│       │   └── nui.lua
│       ├── vimtex.lua
│       └── which-key.lua
└── README.md
```

## Plugins Info

[folke/lazy.nvim](https://github.com/folke/lazy.nvim)
A modern plugin manager for Neovim.

[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
Snippet Engine for Neovim written in Lua.

[iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
markdown preview plugin for (neo)vim.

[windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
autopairs for neovim written by lua.

[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
A completion plugin for neovim coded in Lua.

[nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
A file explorer tree for neovim written in lualine.

[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
Nvim Treesitter configurations and abstraction layer.

[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
Find, Filter, Preview, Pick. All lua, all the time.

[lervag/vimtex](https://github.com/lervag/vimtex)
VimTeX: A modern Vim and neovim filetype plugin for LaTeX files.

[folke/which-key.nvim](https://github.com/folke/which-key.nvim)
Create key bindings that stick. WhichKey is a lua plugin for Neovim 0.5 that displays a popup with possible keybindings of the command you started typing.

### LSP

[utilyre/barbecue.nvim](https://github.com/utilyre/barbecue.nvim)
A VS Code like winbar for Neovim.

[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters.

[jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.

[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
Quickstart configs for Nvim LSP.

### UI

[goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
a lua powered greeter like vim-startify / dashboard-nvim.

[akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
A snazzy bufferline for Neovim.

[catppuccin/nvim](https://github.com/catppuccin/nvim)
Soothing pastel theme for (Neo)vim.

[stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
Neovim plugin to improve the default vim.ui interfaces.

[lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
Indent guides for Neovim.

[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
A blazing fast and easy to configure neovim statusline plugin written in pure lua.

[folke/noice.nvim](https://github.com/folke/noice.nvim)
Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.

[MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
UI Component Library for Neovim.

