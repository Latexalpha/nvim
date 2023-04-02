return {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        position = "bottom",
    },
    config = function(_,opts)
        require("trouble").setup(opts)
    end
}
