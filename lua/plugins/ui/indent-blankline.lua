return {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
        char = "|",
        filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
        show_current_context = true,
        show_current_context_start = true,
        show_end_of_line = true,
    },
    config = function(_, opts)
        require("indent_blankline").setup(opts)
    end
}
