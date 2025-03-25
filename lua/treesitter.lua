local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

local status, parsers = pcall(require, "nvim-treesitter.parsers")
if not status then
    return
end
local parser_configs = parsers.get_parser_configs()

configs.setup {
    ensure_installed = { 'lua', 'vimdoc' };

    sync_install = false,

    highlight = {
        enable = true,
    },
    indent = { enable = true },
}
