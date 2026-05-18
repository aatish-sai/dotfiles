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
-- vim.keymap.set("n", "<leader>", function() end, { desc = "" })
-- vim.keymap.set("n", "<leader>", function() end, { desc = "" })
-- vim.keymap.set("n", "<leader>", function() end, { desc = "" })

-- Search / Grep Files
-- vim.keymap.set("n", "<leader>", function() end, { desc = "" })
-- vim.keymap.set("n", "<leader>", function() end, { desc = "" })
-- vim.keymap.set("n", "<leader>", function() end, { desc = "" })
-- vim.keymap.set("n", "<leader>", function() end, { desc = "" })

-- Lazygit
vim.keymap.set("n", "<leader>gg", function()
	Snacks.lazygit()
end, { desc = "Lazygit" })
