return {
	{
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
	},
	{
		"ricardoramirezr/blade-nav.nvim",
		dependencies = { -- totally optional
			"hrsh7th/nvim-cmp", -- if using nvim-cmp
			{ "ms-jpq/coq_nvim", branch = "coq" }, -- if using coq
		},
		ft = { "blade", "php" }, -- optional, improves startup time
		opts = {
			close_tag_on_complete = true, -- default: true
		},
	},
}
