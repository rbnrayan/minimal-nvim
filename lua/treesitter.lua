local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

configs.setup {
    ensure_installed = { 'c', 'rust', 'lua' };

    sync_install = false,

    highlight = {
        enable = true,
    },
    indent = { enable = true },
}
