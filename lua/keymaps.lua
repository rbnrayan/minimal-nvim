local opts      = { noremap = true, silent = true }
local expr_opts = { noremap = true, silent = true, expr = true }
local keymap    = vim.keymap.set

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

-- window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- moving text up and down
keymap('v', '<A-j>', ':m .+1<CR>==gv', opts)
keymap('v', '<A-k>', ':m .-2<CR>==gv', opts)

-- Lazy plugins access
keymap('n', '<leader>P', ':Lazy<CR>')

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>' ,opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>'  ,opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>'    ,opts)
keymap('n', '<leader>fm', '<cmd>Telescope man_pages<CR>'  ,opts)
keymap('n', '<leader>fq', '<cmd>Telescope quickfix<CR>'   ,opts)
keymap('n', '<leader>f?', '<cmd>Telescope commands<CR>'   ,opts)

if vim.loop.os_uname().sysname == "Linux" then
    -- align lines (not available on windows :/)
    keymap('v', '&', ':\'<,\'>!column -t -o \' \'<CR>gv=', opts)
end

-- clear Search highlighting
keymap('n', '<A-l>', ':nohlsearch<CR>')
