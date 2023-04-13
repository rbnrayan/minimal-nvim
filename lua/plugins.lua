return {
    -- Colorschemes
    -- "phha/zenburn.nvim",
    "rbnrayan/yello_world.nvim",

    -- {
    --     'glepnir/dashboard-nvim',
    --     event = 'VimEnter',
    --     dependencies = { {'nvim-tree/nvim-web-devicons'} }
    -- },

    "nvim-treesitter/nvim-treesitter",
    -- Telescope
    -- {
    --     "nvim-telescope/telescope.nvim", tag = "0.1.1",
    --     dependencies = { "nvim-lua/plenary.nvim" },
    --     cmd = "TSUpdate",
    --     -- lazy = false,
    -- },

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

