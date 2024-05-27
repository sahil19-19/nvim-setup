vim.g.mapleader = " "

local M         = {}

function M.map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- move selected portion up and down with indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append next line to end of current line
vim.keymap.set("n", "J", "mzJ`z")

-- half page jump up and down with cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search terms stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete to black hole register
M.map("n", "d", "\"_d")
M.map("x", "d", "\"_d")
M.map("n", "<leader>p", "\"_dp") -- replace selected text with yanked text without loosing stirng in copy register

-- Go half page up/down with cursor in the center
M.map("n", "<C-d>", "<C-d>zz")
M.map("n", "<C-u>", "<C-u>zz")

-- Search and center the cursor
M.map("n", "n", "nzzzv")
M.map("n", "N", "Nzzzv")

-- Center after up down
M.map("n", "j", "jzzzv")
M.map("n", "k", "kzzzv")

-- copy to system register, that is the + register
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- do not press Q
vim.keymap.set("n", "Q", "<nop>")

-- not working?
-- switch projects
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>f", function()
--    vim.lsp.buf.format()
--end)


-- quickfix navigation
vim.keymap.set("n" , "<C-k>" , "<cmd>cnext<CR>zz")
vim.keymap.set("n" , "<C-j>" , "<cmd>cprev<CR>zz")

-- replace the current string
vim.keymap.set("n" , "<leader>s" , [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- idk yet, so commented
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- no more :so, ;)
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- copy all into + register
vim.keymap.set("n", "<C-c>", "ggVG\"+y")

-- to copy selected text into 


return M
