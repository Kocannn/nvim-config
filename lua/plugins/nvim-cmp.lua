return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      -- Pastikan opts.completion ada sebelum mengaksesnya
      opts.completion = opts.completion or {}

      -- Matikan auto select dengan menambahkan `noselect`
      opts.completion.completeopt = "menu,menuone,noinsert,noselect"

      -- Pastikan opts.preselect ada sebelum mengaksesnya
      opts.preselect = cmp.PreselectMode.None

      -- Pastikan opts.mapping ada sebelum mengaksesnya
      opts.mapping = opts.mapping or {}

      -- Hapus keybinding lama
      opts.mapping["<C-n>"] = nil
      opts.mapping["<C-p>"] = nil

      -- Tambahkan keybinding baru
      opts.mapping["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })
      opts.mapping["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })

      -- Pastikan opts.sources ada sebelum menambahkan "copilot"
      opts.sources = opts.sources or {}
      table.insert(opts.sources, { name = "copilot" })
    end,
  },
}
