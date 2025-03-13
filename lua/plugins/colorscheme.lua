return {
  {
    "craftzdog/solarized-osaka.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("solarized-osaka").setup({
        transparent = true,
        style = "night",
        on_colors = function(colors)
          colors.bg_sidebar = "NONE"
          colors.bg_float = "NONE" -- Hilangkan background floating windows
        end,
      })
      -- load the colorscheme here
      --
      vim.cmd([[colorscheme solarized-osaka]])
    end,
  },
}
