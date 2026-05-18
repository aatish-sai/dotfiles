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

vim.lsp.enable({ "lua_ls" })
