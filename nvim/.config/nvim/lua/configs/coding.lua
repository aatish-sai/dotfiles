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

vim.diagnostic.config({
	signs = true,
	underline = true,
	float = {
		source = true,
		border = "rounded",
		focusable = true,
	},
	update_in_insert = false,
	severity_sort = true,
})
