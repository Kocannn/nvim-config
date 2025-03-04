return {
	{
		"craftzdog/solarized-osaka.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local bg = "#011628"
			local bg_dark = "#011423"
			local bg_highlight = "#143652"
			local fg = "#CBE0F0"
			local border = "#547998"

			require("solarized-osaka").setup({
				transparent = true,
				style = "night",
				on_colors = function(colors)
					colors.bg = bg
					colors.bg_float = bg_dark
					colors.bg_highlight = bg_highlight
					colors.bg_popup = bg_dark
					colors.bg_sidebar = "NONE"
					colors.bg_statusline = bg_dark
					colors.border = border
					colors.fg = fg
					colors.fg_float = fg
				end,
			})
			-- load the colorscheme here
			--
			vim.cmd([[colorscheme solarized-osaka]])
		end,
	},
}
