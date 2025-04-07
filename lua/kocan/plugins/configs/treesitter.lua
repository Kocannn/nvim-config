pcall(function()
	dofile(vim.g.base46_cache .. "syntax")
	dofile(vim.g.base46_cache .. "treesitter")
end)

return {
	ensure_installed = {
		"lua",
		"luadoc",
		"printf",
		"vim",
		"vimdoc",
		"markdown",
		"markdown_inline",
		"json",
		"jsonc",
		"yaml",
		"toml",
		"bash",
		"dockerfile",
		"html",
		"css",
		"go",
		"rust",
		"typescript",
		"javascript",
		"tsx",
		"scss",
		"scssdoc",
		"sql",
		"graphql",
		"hcl",
		"proto",
		"git_config",
	},

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enable = true },
}
