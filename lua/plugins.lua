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

    {
        "gpanders/nvim-parinfer",
        lazy = false,
    },

    -- Harpoon
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- Colorschemes
    -- "blazkowolf/gruber-darker.nvim",
    "nyoom-engineering/oxocarbon.nvim",
    "felipeagc/fleet-theme-nvim",
    "Mofiqul/vscode.nvim",
    "rebelot/kanagawa.nvim",
    "sainnhe/everforest",
    "xero/miasma.nvim",
    "morhetz/gruvbox",
    "navarasu/onedark.nvim",
    "folke/tokyonight.nvim",
    "ficcdaf/ashen.nvim",
    { "catppuccin/nvim", name = "catppuccin" }
}
