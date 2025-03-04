return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	---@module "ibl"
	---@type "ibl.config"
	opts = {
		indent = {
			smart_indent_cap = true, -- Membatasi garis indentasi sesuai teks
		},
		scope = {
			enabled = true, -- Menampilkan scope indentasi
			show_start = true, -- Menandai awal scope
			show_end = true, -- Menandai akhir scope
			highlight = { "IblScope" }, -- Highlight scope
		},
		debounce = 100,
	},
}
