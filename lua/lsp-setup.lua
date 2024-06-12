local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = false }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    window = {},
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
    }, {
            { name = 'buffer' },
    }),
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

local lsp_flags = {
    debounce_text_changes = 150,
}

local on_attach = function(_, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    local expr_bufopts = { noremap = true, silent = true, expr = true, buffer = bufnr }

    local vim_set_normalmode_keymap = function(keymap, action)
        vim.keymap.set('n', keymap, action, bufopts)
    end

    local vim_set_insertmode_keymap = function(keymap, action)
        vim.keymap.set('i', keymap, action, expr_bufopts)
    end

    -- enable completion triggered by <c-x><c-o> | <S-Tab>
    vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
    vim_set_insertmode_keymap('<S-Tab>', function ()
        return vim.fn.pumvisible() ~= 0 and '<C-p>' or '<C-x><C-o>'
    end)

    vim_set_normalmode_keymap('gD', vim.lsp.buf.declaration)
    vim_set_normalmode_keymap('gd', vim.lsp.buf.definition)
    vim_set_normalmode_keymap('K', vim.lsp.buf.hover)
    vim_set_normalmode_keymap('gi', vim.lsp.buf.implementation)
    vim_set_normalmode_keymap('<C-k>', vim.lsp.buf.signature_help)
    vim_set_normalmode_keymap('gl', vim.diagnostic.open_float)
end

local function set_lsp(srv_name, other)
    local config = {
        on_attach = on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
    }

    for key, value in pairs(other) do
        config[key] = value
    end

    lspconfig[srv_name].setup(config)
end

vim.lsp.set_log_level('info')

set_lsp('lua_ls', {
    cmd = { vim.fn.expand('~/.nix-profile/bin/lua-language-server') },
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
})

set_lsp('clangd', {
    cmd = { vim.fn.expand('~/.nix-profile/bin/clangd') },
})

set_lsp('jdtls', {
    cmd = {
        vim.fn.expand('~/.nix-profile/bin/jdt-language-server'),
        '-configuration', vim.fn.expand('~/.cache/jdtls/config'),
        '-data', vim.fn.expand('~/.cache/jdtls/workspace'),
    },
    root_dir = function ()
        return vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1])
    end,
})

set_lsp('ocamllsp', {
    cmd = { vim.fn.expand('~/.nix-profile/bin/ocamllsp') },
    root_dir = function ()
        return vim.fs.dirname(vim.fs.find({ "*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace" }, { upward = true })[1])
    end,
})


