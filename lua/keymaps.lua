local function merge_table(table1, table2)
    for k,v in pairs(table2) do
        table1[k] = v
    end

    return table1
end

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- :b(n|p) => <leader>b(n|p)
keymap('n', '<leader>bn', ':bn<CR>', opts)
keymap('n', '<leader>bp', ':bp<CR>', opts)

keymap('i', '<S-Tab>', function()
    return vim.fn.pumvisible() ~= 0 and '<C-p>' or '<C-x><C-o>'
end, merge_table(opts, { expr = true }))
keymap('i', '<Tab>', function()
    return vim.fn.pumvisible() ~= 0 and "<C-n>" or "<Tab>"
end, merge_table(opts, { expr = true }))

-- reselect selection after the identation
keymap('v', '>', '>gv', opts)
keymap('v', '<', '<gv', opts)
