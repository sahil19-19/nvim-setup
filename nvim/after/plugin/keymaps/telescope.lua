--s telescope.nvim is a fuzzyfinder
local builtin = require('telescope.builtin')

-- ff -> find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- look for files that are just in GIT
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- fs -> file search
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({
        search = vim.fn.input("Grep > ")
    });
end)

vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

