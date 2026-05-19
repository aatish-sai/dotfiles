vim.pack.add({
	{ src = "https://github.com/nvim-mini/mini.icons", version = "stable" },
})

require("mini.icons").setup()

vim.pack.add({
	{ src = "https://github.com/NvChad/nvim-colorizer.lua" },
})

require("colorizer").setup({
	"css",
	"javascript",
	html = {
		mode = "foreground",
	},
})

vim.pack.add({
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
})

require("gitsigns").setup({
	signs = {
		add = { text = "▎" },
		change = { text = "▎" },
		delete = { text = "" },
		topdelete = { text = "" },
		changedelete = { text = "▎" },
		untracked = { text = "▎" },
	},
	signs_staged = {
		add = { text = "▎" },
		change = { text = "▎" },
		delete = { text = "" },
		topdelete = { text = "" },
		changedelete = { text = "▎" },
	},
})

vim.pack.add({
	{ src = "https://github.com/folke/which-key.nvim" },
})

require("which-key").setup({})
