local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

configs.setup {
    ensure_installed = { 'lua', 'vimdoc' };

    sync_install = false,

    highlight = {
        enable = true,
    },
    indent = { enable = true },
}
