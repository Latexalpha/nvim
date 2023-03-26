return{
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile"},
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
    dependencies = {
        {
            "williamboman/mason.nvim",
            cmd = {
                "Mason",
                "MasonInstall",
                "MasonUninstall",
                "MasonUninstallAll",
                "MasonLog",
            }, -- Package Manager
            dependencies = "williamboman/mason-lspconfig.nvim",
            config = function()
                local mason = require("mason")
                local mason_lspconfig = require("mason-lspconfig")
                local servers = {
                  "lua_ls",
                  "pyright",
                }
                mason.setup {
                  ui = {
                    -- Whether to automatically check for new versions when opening the :Mason window.
                    check_outdated_packages_on_open = false,
                    border = "single",
                    icons = {
                      package_pending = " ",
                      package_installed = " ",
                      package_uninstalled = " ",
                    },
                  },
                }
                mason_lspconfig.setup {
                  ensure_installed = servers,
                }
            end,
        },
    },
}
