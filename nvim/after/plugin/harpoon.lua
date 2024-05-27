local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- add file to harpoon
vim.keymap.set("n", "<leader>a" ,mark.add_file)

-- doesnt work, contribution??:
--vim.keymap.set("n", "<leader>e" ,mark.remove_file)

-- C-u opens the harpoon menu ui
vim.keymap.set("n", "<C-n>" , ui.toggle_quick_menu)

-- open file number one
vim.keymap.set("n", "<leader>h" , function ()
    ui.nav_file(1)
end)

vim.keymap.set("n", "<leader>j" , function ()
    ui.nav_file(2)
end)

vim.keymap.set("n", "<leader>k" , function ()
    ui.nav_file(3)
end)

vim.keymap.set("n", "<leader>l" , function ()
    ui.nav_file(4)
end)

-- make C-j as C-m, that is jump down to first word of the line
