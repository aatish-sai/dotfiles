---@type vim.lsp.Config
local config = {

	root_dir = function(bufrn, on_dir)
		local root = vim.fs.root(bufrn, { ".git", "pnpm-workspace.taml" })
		if root then
			on_dir(root)
		else
		end
	end,

	settings = {
		vtsls = {
			autoUseWorkspaceTsdk = true,
		},
	},
}

return config
