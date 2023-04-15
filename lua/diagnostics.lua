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

