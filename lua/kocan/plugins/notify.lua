return {
	"rcarriga/nvim-notify",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local notify = require("notify")
		notify.setup({
			background_colour = "#000000",
			render = "default",
			stages = "fade_in_slide_out",
			time_formats = {
				notification = " %a %b %d, %Y -  %H:%M",
				notification_history = " %a %b %d, %Y -  %H:%M",
			},
			max_height = 3,
			timeout = 800,
		})
	end,
}
