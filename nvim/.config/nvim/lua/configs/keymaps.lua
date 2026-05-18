local map = vim.keymap.set

-- Better Window Navigation
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", noremap = true, silent = true })

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Navigate buffer
map("n", "H", vim.cmd.bprevious, { desc = "Switch buffer (previous)", noremap = true, silent = true })
map("n", "L", vim.cmd.bnext, { desc = "Switch buffer (next)", noremap = true, silent = true })

-- Move text up and down
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Down", noremap = true, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Down", noremap = true, silent = true })

-- Stay in Indent Mode
map("v", "<", "<gv", { silent = true })
map("v", ">", ">gv", { silent = true })

-- Better Paste
map("x", "p", '"_dP', { silent = true, noremap = true })

-- Better next/previous in search
map("n", "n", "nzzzv", { silent = true })
map("n", "N", "Nzzzv", { silent = true })

-- Diagnostic
map("n", "vd", vim.diagnostic.open_float)
map("n", "[d", vim.diagnostic.goto_prev)
map("n", "]d", vim.diagnostic.goto_next)

-- Ctrl C to escape
map("i", "<C-c>", "<Esc>", { silent = true })

map("n", "Q", ":noh <CR>", { silent = true })

-- Save file
map("n", "<leader>w", vim.cmd.w, { desc = "Save File", silent = true })
