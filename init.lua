-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.filetype.add({
  extension = {
    edge = "html", -- Perlakukan .edge seperti HTML agar autotag bekerja
  },
})
