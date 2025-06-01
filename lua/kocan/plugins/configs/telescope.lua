dofile(vim.g.base46_cache .. "telescope")

return {
	defaults = {
		prompt_prefix = "   ",
		selection_caret = " ",
		entry_prefix = " ",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		wrap_results = true,
		winblend = 0,
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
			},
			width = 0.87,
			height = 0.80,
		},
		mappings = {
			n = {
				["q"] = require("telescope.actions").close,
				["l"] = require("telescope.actions").select_default,
			},
			i = {
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
				["<C-n>"] = false,
				["<C-p>"] = false,
			},
		},
	},

	pickers = {
		diagnostics = {
			theme = "ivy",
			initial_mode = "normal",
			layout_config = {
				preview_cutoff = 9999,
			},
		},
	},

	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		},
		file_browser = {
			theme = "dropdown",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["n"] = {
					-- your custom normal mode mappings
					["n"] = require("telescope").extensions.file_browser.actions.create,
					["h"] = require("telescope").extensions.file_browser.actions.goto_parent_dir,
					["/"] = function()
						vim.cmd("startinsert")
					end,
					["<C-u>"] = function(prompt_bufnr)
						for _ = 1, 10 do
							require("telescope.actions").move_selection_previous(prompt_bufnr)
						end
					end,
					["<C-d>"] = function(prompt_bufnr)
						for _ = 1, 10 do
							require("telescope.actions").move_selection_next(prompt_bufnr)
						end
					end,
					["<PageUp>"] = require("telescope.actions").preview_scrolling_up,
					["<PageDown>"] = require("telescope.actions").preview_scrolling_down,
				},
			},
		},
	},
}
