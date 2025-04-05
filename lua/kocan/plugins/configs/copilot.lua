require("copilot").setup({
	suggestion = {
		enabled = false,
		auto_trigger = false,
		keymap = {
			accept = "<tab>", -- handled by nvim-cmp / blink.cmp
			next = "<M-]>",
			prev = "<M-[>",
		},
	},
	panel = { enabled = false },
	filetypes = {
		markdown = true,
		help = true,
	},
})
