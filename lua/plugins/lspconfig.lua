return{
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile"},
    config = function()
        local lspconfig = require("lspconfig")

        -- Use an on_attach function to only map the following keys
        -- after the language server attaches to the current buffer
        local on_attach = function(client, bufnr)
            local bufopts = { noremap=true, silent=true, buffer=bufnr }
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
            vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
            vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
            vim.keymap.set('n', '<leader>wl', function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, bufopts)
            vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
            vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
        end,

        lspconfig.pyright.setup{
            on_attach = on_attach,
            settings = {
                python = {
                    analysis = {
                        typeCheckingMode = "off",
                    },
                },
            },
        }

        lspconfig.lua_ls.setup{
            on_attach = on_attach,
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

        lspconfig.texlab.setup{}
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
                    "texlab",
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
