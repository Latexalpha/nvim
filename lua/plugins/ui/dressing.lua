return {
    -- better vim.ui
    "stevearc/dressing.nvim",
    lazy = true,
    opts = {
        input = {
            enabled = true,
            prompt_align = "center",
            insert_only = true,
            start_in_insert = true,
            mappings = {
                n = {
                    ["<Esc>"] = "Close",
                    ["<CR>"] = "Confirm",
                },
                i = {
                    ["<C-c>"] = "Close",
                    ["<CR>"] = "Confirm",
                    ["<Up>"] = "HistoryPrev",
                    ["<Down>"] = "HistoryNext",
                },
            },
        },
        select = {
            enabled = true,
            backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" },
            mappings = {
                ["<Esc>"] = "Close",
                ["<C-c>"] = "Close",
                ["<CR>"] = "Confirm",
            },
        }
    },
    config = function(_,opts)
        require("dressing").setup(opts)
    end,
}
