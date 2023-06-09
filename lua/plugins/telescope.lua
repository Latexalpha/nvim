return {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    keys = {
        {"<leader>ts", "<cmd>Telescope<CR>", desc = "Telescope"},
    },
    version = false,
    dependencies = { 
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-fzf-native.nvim",
    }
}
