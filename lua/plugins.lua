return {
    -- Colorschemes
    "rbnrayan/yello_world.nvim",

    "nvim-treesitter/nvim-treesitter",

    -- LSP
    "neovim/nvim-lspconfig",
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false
    },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
}

