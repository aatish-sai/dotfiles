vim.g.mapleader = " "

--Prevents showing extra messages when using completion
vim.opt.shortmess:append("c")
-- Displays the line number of current line
vim.opt.number = true
-- Displays line numbers relative to the current cursor position
vim.opt.relativenumber = true
-- Time in milliseconds to wait for a mapped sequence to complete
vim.opt.timeoutlen = 500
-- Time in milliseconds of inactivity before calling CursorHold or writing to swap
vim.opt.updatetime = 1000
-- Ignores case when searching patterns
vim.opt.ignorecase = true
-- Automatically switches to case-sensitive search if a capital letter is used
vim.opt.smartcase = true
-- Enables 24-bit RGB colors in the terminal
vim.opt.termguicolors = true
-- Configures the behavior of the insert mode completion menu
vim.opt.completeopt = "menu,menuone,noselect,popup"
-- Number of spaces that a <Tab> character represents
vim.opt.tabstop = 2
-- Number of space to use for each step of automatic indentation
vim.opt.shiftwidth = 2
-- Number of spaces that a <Tab> countes for during edition operations
vim.opt.softtabstop = 2
-- Converts tabs into spaces when typing
vim.opt.expandtab = true
-- Automatically inserts an extra level of indentation in some case
vim.opt.smartindent = true
-- Autocompletion
vim.o.autocomplete = true
