return{
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        keys = { 
            { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } 
        },
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
        config = function(opts)
            require("mason").setup(opts)
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "lua-language-server",
            },
            automatic_installation = true,
        },
        config = function(opts)
            require("mason-lspconfig").setup(opts)
        end,
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile"},
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.pyright.setup{
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = "off",
                        },
                    },
                },
            }
            lspconfig.lua_ls.setup{
                settings = {
                    lua = {
                        diagnostics = { globals = {"vim"} },
                        workspace = {
                            library = {
                                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
					            [vim.fn.stdpath("config") .. "/lua"] = true,
                            },
                        },
                    },
                },
            }
        end,
    },
}
