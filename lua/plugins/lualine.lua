return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Konfigurasi refresh rate
      opts.refresh = {
        statusline = 1500,
        tabline = 1500,
        winbar = 1500,
      }

      -- Konfigurasi sections
      opts.sections = {
        lualine_a = { "branch" },
        lualine_b = {},
        lualine_x = {},
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 0 } },
          { "location", padding = { left = 0, right = 1 } },
        },
        lualine_z = {},
      }

      -- Konfigurasi extensions
      opts.extensions = {}
    end,
  },
}
