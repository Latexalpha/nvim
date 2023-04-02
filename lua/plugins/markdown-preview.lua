return {
    "iamcco/markdown-preview.nvim",
    event = "BufRead",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
    keys = {
        {"<leader>mp", "<cmd>MarkdownPreview<CR>", desc = "MarkdownPreview"},
        {"<leader>mt", "<cmd>MarkdownPreviewStop<CR>", desc = "MarkdownPreviewStop"},
    },
    config = function()
        vim.fn["mkdp#util#install"]()
    end,
}
