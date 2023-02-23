local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
    vim.api.nvim_echo({{"Failed to require `lspconfig`...", 'None'}}, true, {})
    return
end

local on_attach = function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    local vim_set_normalmode_keymap = function(keymap, action)
        vim.keymap.set('n', keymap, action, bufopts)
    end

    -- enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    vim_set_normalmode_keymap('gD', vim.lsp.buf.declaration)
    vim_set_normalmode_keymap('gd', vim.lsp.buf.definition)
    vim_set_normalmode_keymap('K', vim.lsp.buf.hover)
    vim_set_normalmode_keymap('gi', vim.lsp.buf.implementation)
    vim_set_normalmode_keymap('<C-k>', vim.lsp.buf.signature_help)
    vim_set_normalmode_keymap('gl', vim.diagnostic.open_float)
end

local diagnostic_config = {
    virtual_text = false,
    update_in_insert = false,
    severity_sort = true,
    float = {
        focusable = false,
        style = 'minimal',
        source = 'always',
        header = '',
        prefix = '',
    }
}
vim.diagnostic.config(diagnostic_config)

local lsp_flags = {
    debounce_text_changes = 150,
}

local lsp_servers = {
    {
        name = 'lua_ls',
        cmd = { "lua-language-server.sh" }
    },
    {
        name = 'rust_analyzer',
        settings = { ["rust-analyzer"] = {} }
    },
}

for _,lsp_server in pairs(lsp_servers) do
	local lsp_server_setup = {
		on_attach = on_attach,
		flags = lsp_flags,
	}

	for k,v in pairs(lsp_server) do
	    if lsp_server.name ~= v then lsp_server_setup[k] = v end
	end

    nvim_lsp[lsp_server.name].setup(lsp_server_setup)
end
