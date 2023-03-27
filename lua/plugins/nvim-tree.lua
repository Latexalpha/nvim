return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    cmd = "NvimTreeToggle",
    keys = {
        {"<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "NvimTreeToggle" },
    },

    dependencies = {
        {
            "nvim-tree/nvim-web-devicons",
            lazy = true,
        },
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
