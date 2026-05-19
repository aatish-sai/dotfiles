vim.g.mapleader = " "

-- General Configurations
vim.opt.clipboard = "unnamed"

-- Line Numbers
-- Displays the line number of current line
vim.opt.number = true
-- Displays line numbers relative to the current cursor position
vim.opt.relativenumber = true

-- Indentations
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

-- Session / History
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.history = 2000

-- Timing
-- Time in milliseconds to wait for a mapped sequence to complete
vim.opt.updatetime = 1000

-- Completion Behavior

-- Search
-- Ignores case when searching patterns
vim.opt.ignorecase = true
-- Automatically switches to case-sensitive search if a capital letter is used
vim.opt.smartcase = true

-- Appearance
vim.opt.cursorline = true
-- Enables 24-bit RGB colors in the terminal
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
-- Transparency of popup window
vim.opt.pumblend = 10
-- Transparency of floating window
vim.opt.winblend = 10
-- Popup menu max rows
vim.opt.pumheight = 10
-- Help command window height
vim.opt.helpheight = 20
-- Preview window height
vim.opt.previewheight = 12
-- Command window height
vim.opt.cmdwinheight = 5

--Prevents showing extra messages when using completion
vim.opt.shortmess:append("c")
-- Configures the behavior of the insert mode completion menu
vim.opt.completeopt = "menu,menuone,noselect,popup"

vim.opt.guicursor = ""

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.formatoptions = "1jcroql"
