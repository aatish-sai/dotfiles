vim.pack.add({ "https://github.com/folke/snacks.nvim" })

require("snacks").setup({
	picker = {
		enabled = true,
		sources = {
			explorer = {
				auto_close = true,
			},
		},
	},
	lazygit = {
		enabled = true,
	},
	explorer = {
		enabled = true,
	},
})

-- Open File Explorer
vim.keymap.set("n", "<leader>e", function()
	Snacks.explorer()
end, { desc = "File Explorer" })

-- Find files
vim.keymap.set("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", function()
	Snacks.picker.git_files()
end, { desc = "Find Git Files" })

-- Search / Grep Files
vim.keymap.set("n", "<leader>sb", function()
	Snacks.picker.lines()
end, { desc = "Buffer Lines" })
vim.keymap.set("n", "<leader>sB", function()
	Snacks.picker.grep_buffers()
end, { desc = "Grep Open Buffers" })
vim.keymap.set("n", "<leader>sg", function()
	Snacks.picker.grep()
end, { desc = "Grep" })
vim.keymap.set({ "n", "x" }, "<leader>sw", function()
	Snacks.picker.grep_word()
end, { desc = "Grep visual selection or word" })

-- Lazygit
vim.keymap.set("n", "<leader>gg", function()
	Snacks.lazygit()
end, { desc = "Lazygit" })
