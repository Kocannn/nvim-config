require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local nomap = vim.keymap.del
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Window movement
map("n", "sl", "<C-w>l", opts)
map("n", "sh", "<C-w>h", opts)
map("n", "sk", "<C-w>k", opts)
map("n", "sj", "<C-w>j", opts)

nomap("n", "<C-h>")
nomap("n", "<C-l>")

-- Diagnostics
map("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
