local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

local status, parsers = pcall(require, "nvim-treesitter.parsers")
if not status then
    return
end
local parser_configs = parsers.get_parser_configs()

parser_configs.fsharp = {
    install_info = {
        url = "https://github.com/ionide/tree-sitter-fsharp",
        branch = "main",
        files = { "src/scanner.c", "src/parser.c" },
    },
    filetype = "fsharp",
}

configs.setup {
    ensure_installed = { 'lua', 'vimdoc', 'fsharp' };

    sync_install = false,

    highlight = {
        enable = true,
    },
    indent = { enable = true },
}
