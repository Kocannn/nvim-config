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
		"go",
		"proto",
		"blade",
		"python",
		"markdown",
		"markdown_inline",
		"sql",
		"php",
		"html",
		"css",
		"dockerfile",
	},
	auto_install = true,

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enable = true },

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<Enter>", -- set to `false` to disable one of the mappings
			node_incremental = "<Enter>",
			scope_incremental = false,
			node_decremental = "<Backspace>",
		},
	},
}
