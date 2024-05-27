-- Disable netrw
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

--vim.g.vimwiki_list = {{path = '~/Aryan/wiki', syntax = 'markdown', ext = '.md'}}

-- Relative numbering
vim.opt.nu               = true
vim.opt.relativenumber   = true

vim.opt.errorbells       = false

-- indentation settings
vim.opt.tabstop          = 4
vim.opt.softtabstop      = 4
vim.opt.shiftwidth       = 4
vim.opt.expandtab        = true
vim.opt.smartindent      = true
vim.opt.wrap             = true

-- use system clipboard for all copy, paste operations , nvim's register would not be used
-- vim.opt.clipboard        = "unnamedplus"

-- better search 
vim.opt.hlsearch         = false
vim.opt.incsearch        = true

-- disable creating swap file
vim.opt.swapfile         = false
vim.opt.backup           = false

-- undo tree has access to long running undos
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true;

vim.opt.termguicolors    = true

-- Give more space for displaying messages.
vim.opt.cmdheight        = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime       = 50

vim.opt.shell            = "bash"

vim.opt.wildmode         = "longest,full"

vim.opt.autowrite        = true

vim.g.mapleader = " ";

vim.opt.scrolloff = 8;
