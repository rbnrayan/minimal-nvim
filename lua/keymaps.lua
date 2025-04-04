local opts      = { noremap = true, silent = true }
local expr_opts = { noremap = true, silent = true, expr = true }
local keymap    = vim.keymap.set

keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- open file explorer and resize it
keymap('n', '<Leader>e', vim.cmd.Ex)

-- list buffers and prompt to switch
keymap('n', '<Leader>bb', ':ls<CR>:b<SPACE>', opts)

-- next buffer
keymap('n', '<Leader>bn', vim.cmd.bnext)

-- previous buffer
keymap('n', '<Leader>bp', vim.cmd.bprev)

-- toggle omni-completion on <S-Tab> if available
if vim.api.nvim_buf_get_option(0, 'omnifunc') ~= '' then
    keymap('i', '<S-Tab>', function()
        return vim.fn.pumvisible() ~= 0 and '<C-p>' or '<C-x><C-o>'
    end, expr_opts)
else
    keymap('i', '<S-Tab>', function()
        return vim.fn.pumvisible() ~= 0 and '<C-p>' or '<C-n>'
    end, expr_opts)
end

-- if completion menu is visible make <Tab> act as <C-n>
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

if vim.loop.os_uname().sysname == "Linux" then
    -- align lines (`column` cmd not available on windows :/)
    keymap('v', '&', ':\'<,\'>!column -t -o \' \'<CR>gv=', opts)
end

-- clear Search highlighting
keymap('n', '<A-l>', ':nohlsearch<CR>')
