local opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, silent = true, expr = true }
local keymap = vim.keymap.set

keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- :b(n|p) => <leader>b(n|p)
keymap('n', '<leader>bn', ':bn<CR>', opts)
keymap('n', '<leader>bp', ':bp<CR>', opts)

keymap('i', '<S-Tab>', function()
    return vim.fn.pumvisible() ~= 0 and '<C-p>' or '<C-x><C-o>'
end, expr_opts)
keymap('i', '<Tab>', function()
    return vim.fn.pumvisible() ~= 0 and "<C-n>" or "<Tab>"
end, expr_opts)

-- reselect selection after the identation
keymap('v', '>', '>gv', opts)
keymap('v', '<', '<gv', opts)
