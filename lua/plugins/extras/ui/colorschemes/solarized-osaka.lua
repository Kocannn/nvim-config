return {
  "craftzdog/solarized-osaka.nvim",
  name = "solarized-osaka",
  lazy = false,
  opts = {
    theme = "dark",
    transparent = true,
    on_colors = function(colors)
      colors.bg_sidebar = "NONE"
      colors.bg_float = "NONE" -- Hilangkan background floating windows
      colors.bg_statusline = "NONE" -- Hilangkan background statusline
      colors.bg_tabline = "NONE" -- Hilangkan background tabline
      colors.bg_winbar = "NONE" -- Hilangkan background winbar (jika ada)
    end,
  },
}
