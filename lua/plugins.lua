return {
    "nvim-treesitter/nvim-treesitter",

    -- LSP
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",

            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        },
    },

    -- Autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },

    -- Colorschemes
    "felipeagc/fleet-theme-nvim",
    "Mofiqul/vscode.nvim",
    "projekt0n/github-nvim-theme",
    "vague2k/vague.nvim",
}
