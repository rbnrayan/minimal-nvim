local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
    vim.api.nvim_echo({{"Failed to require `lspconfig`...", 'None'}}, true, {})
    return
end

local diagnostic_config = {
    virtual_text = false,
    update_in_insert = false,
    severity_sort = true,
    float = {
        focusable = false,
        style = 'minimal',
        border = 'single',
        source = 'always',
        header = '',
        prefix = '',
    }
}

vim.cmd [[hi! NormalFloat guibg=background]]
vim.cmd [[hi! FloatBorder guifg=foreground guibg=background]]
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "single",
})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "single",
})
vim.diagnostic.config(diagnostic_config)


-- local lsp_servers = {
--     -- install LSP servers with :MasonInstall <LSP_server>
-- }
-- 
-- for _,lsp_server in pairs(lsp_servers) do
--     ---@type table<string, string|table|function>
-- 	local lsp_server_setup = {
-- 		on_attach = on_attach,
-- 		flags = lsp_flags,
-- 	}
-- 
-- 	for k,v in pairs(lsp_server) do
-- 	    if lsp_server.name ~= v then
--             lsp_server_setup[k] = v
--         end
-- 	end
-- 
--     nvim_lsp[lsp_server.name].setup(lsp_server_setup)
-- end
