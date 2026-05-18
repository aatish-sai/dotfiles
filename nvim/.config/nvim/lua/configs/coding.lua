vim.pack.add({
	{ src = "https://github.com/nvim-mini/mini.pairs", version = "stable" },
})

require("mini.pairs").setup()

vim.pack.add({
	{ src = "https://github.com/nvim-mini/mini.ai", version = "stable" },
})

require("mini.ai").setup()

vim.pack.add({
	{ src = "https://github.com/nvim-mini/mini.surround", version = "stable" },
})

require("mini.surround").setup()
