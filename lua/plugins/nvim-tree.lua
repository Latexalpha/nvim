return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    cmd = "NvimTreeToggle",
    keys = {
        {"<leader>ft", "<cmd>NvimTreeToggle<CR>", desc = "NvimTreeToggle" },
    },
    opts = {
        sort_by = "case_sensitive",
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    },
    config = function(_, opts)
        require("nvim-tree").setup(opts)
    end,
}
