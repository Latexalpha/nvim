return {
    {
        "folke/neodev.nvim",
        config = function()
            require("neodev").setup({
                library = {
                    plugins = { "nvim-dap-ui" },
                    types = true,
                },
            })
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        config = function()
            require("dapui").setup()
        end
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            dap.adapters.python = {
                type = "executable",
                command = vim.g.python3_host_prog,
                args = { "-m", "debugpy.adapter" },
            }
            dap.configurations.python = {
                {
                -- The first three options are required by nvim-dap
                    type = 'python', -- the type here established the link to the adapter definition: `dap.adapters.python`
                    request = 'launch',
                    name = "Launch file",

                    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
                    program = "${file}", -- This configuration will launch the current file if used.
                    -- pythonPath = "C:/Users/heihi/miniconda3/envs/torch20/python.exe"
                    pythonPath = function()
                        local is_windows = function()
                            return vim.loop.os_uname().sysname:find("Windows", 1, true) and true
                        end
                        venv_path = os.getenv("CONDA_PREFIX")
                        if venv_path then
                            if is_windows() then
                                return venv_path .. '\\python.exe'
                            end
                            return venv_path .. '/bin/python'
                        end
                    end
                },
            }
        end
    }
}
