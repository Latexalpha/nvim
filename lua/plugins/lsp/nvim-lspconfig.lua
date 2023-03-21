return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    config = function()
      require("lspconfig").pyright.setup{}
    end,
}
