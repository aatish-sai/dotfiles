vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		astro = { "prettierd" },
	},
	format_on_save = { timeout_ms = 500, lsp_fallback = true },
})

vim.keymap.set({ "n" }, "<leader>f", function()
	require("conform").format({ async = true })
end, { desc = "Format Buffer" })
