return {
	"adalessa/laravel.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
		"kevinhwang91/promise-async",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("laravel").setup()
	end,
}
