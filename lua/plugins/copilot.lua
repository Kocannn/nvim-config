return {
  "zbirenbaum/copilot.lua",
  opts = function(_, opts)
    opts.suggestion.enabled = true -- Pastikan suggestion selalu aktif
    opts.suggestion.auto_trigger = true -- Pastikan saran muncul secara otomatis
    opts.panel.enabled = false -- Nonaktifkan panel popup
  end,
}
