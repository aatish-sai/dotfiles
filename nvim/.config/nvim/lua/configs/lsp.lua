vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
	{ src = "https://github.com/mason-org/mason.nvim" },
})

local function get_mini_icon(ctx)
	if ctx.souce_name == "Path" then
		local is_unknown_type =
			vim.tbl_contains({ "link", "socket", "fifo", "char", "block", "unknown" }, ctx.item.data.type)

		local mini_icon, mini_hl = require("mini.icons").get(
			is_unknown_type and "os" or ctx.item.data.type,
			is_unknown_type and "" or ctx.label
		)

		if mini_icon then
			return mini_icon, mini_hl
		end
	end

	local mini_icon, mini_hl = require("mini.icons").get("lsp", ctx.kind)
	return mini_icon, mini_hl
end

require("mason").setup()

require("blink.cmp").setup({
	keymap = { preset = "default" },
	appearance = {},
	sources = {
		default = { "lsp", "snippets", "buffer", "path" },
	},
	signature = {
		enabled = true,
		window = { border = "rounded" },
	},
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500,
			window = { border = "rounded" },
		},
		menu = {
			border = "rounded",
			auto_show = true,
			draw = {
				components = {
					kind_icon = {
						text = function(ctx)
							local kind_icon, _ = get_mini_icon(ctx)
							return kind_icon
						end,
						highlight = function(ctx)
							local _, hl = get_mini_icon(ctx)
							return hl
						end,
					},
					kind = {
						highlight = function(ctx)
							local _, hl = get_mini_icon(ctx)
							return hl
						end,
					},
				},
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
	},
})

vim.lsp.enable({ "lua_ls", "astro" })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Decleration" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "Goto T[y]pe Definition" })
vim.keymap.set("n", "gai", vim.lsp.buf.incoming_calls, { desc = "C[a]lls [i]ncoming" })
vim.keymap.set("n", "gao", vim.lsp.buf.outgoing_calls, { desc = "C[a]lls [o]utgoing" })
vim.keymap.set("n", "ss", vim.lsp.buf.document_symbol, { desc = "LSP Symbols" })

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

vim.keymap.set("n", "<leader>co", function()
	vim.lsp.buf.code_action({ apply = true, context = {
		only = { "source.organizeImports" },
		diagnostics = {},
	} })
end, { desc = "Organize Imports" })
