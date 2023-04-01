return {
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { {'nvim-tree/nvim-web-devicons'} }
    },
    "neovim/nvim-lspconfig",
    "phha/zenburn.nvim",
    "rbnrayan/yello_world.nvim",
    "nvim-treesitter/nvim-treesitter",
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false,
    },
}

