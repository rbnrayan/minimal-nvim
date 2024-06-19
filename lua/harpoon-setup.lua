local harpoon = require('harpoon')
harpoon:setup()

vim.keymap.set("n", "<Leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<Leader>bl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<Leader>bn", function() harpoon:list():next() end)
vim.keymap.set("n", "<Leader>bp", function() harpoon:list():prev() end)
