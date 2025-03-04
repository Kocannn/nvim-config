return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			-- See Configuration section for options
		},
		-- See Commands section for default commands if you want to lazy load on them
		keys = {
			{
				"<leader>aa",
				":CopilotChat<CR>",
				mode = "n",
				desc = "Open Copilot Chat",
			},
			{

				"<leader>ae",
				":CopilotChatExplain<CR>",
				mode = "v",
				desc = "Explain Copilot Chat",
			},
			{

				"<leader>ar",
				":CopilotChatReview<CR>",
				mode = "v",
				desc = "Review Copilot Chat",
			},
			{
				"<leader>af",
				":CopilotChatFix<CR>",
				mode = "v",
				desc = "Fix Copilot Chat",
			},
			{
				"<leader>ao",
				":CopilotChatOptimize<CR>",
				mode = "v",
				desc = "Optimize Copilot Chat",
			},
			{
				"<leader>ad",
				":CopilotChatDocs<CR>",
				mode = "v",
				desc = "Docs Copilot Chat",
			},
			{
				"<leader>at",
				":CopilotChatTest<CR>",
				mode = "v",
				desc = "Test Copilot Chat",
			},
			{
				"<leader>ac",
				":CopilotChatCommit<CR>",
				mode = "n",
				desc = "Commit Copilot Chat",
			},
			{
				"<leader>ap",
				":CopilotChatPush<CR>",
				mode = "n",
				desc = "Push Copilot Chat",
			},
			{
				"<leader>al",
				":CopilotChatPull<CR>",
				mode = "n",
				desc = "Pull Copilot Chat",
			},
			{
				"<leader>as",
				":CopilotChatStatus<CR>",
				mode = "n",
				desc = "Status Copilot Chat",
			},
			{
				"<leader>ah",
				":CopilotChatHelp<CR>",
				mode = "n",
				desc = "Help Copilot Chat",
			},
			{
				"<leader>aw",
				":CopilotChatWho<CR>",
				mode = "n",
				desc = "Who Copilot Chat",
			},
			{
				"<leader>az",
				":CopilotChatZoom<CR>",
				mode = "n",
				desc = "Zoom Copilot Chat",
			},
		},
	},
}
