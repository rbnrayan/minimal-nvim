return {
    "ellisonleao/gruvbox.nvim",
    "rebelot/kanagawa.nvim",
    "neovim/nvim-lspconfig",
    {
        "windwp/nvim-autopairs",
        lazy = false,
        config = function ()
            require("nvim-autopairs").setup {}
        end,
    },
}

