-- import nvim-tree plugin safely
local setup, fluttertool = pcall(require, "flutter-tools")
if not setup then
	return
end

fluttertool.setup({
	-- flutter_path = "/Users/macbook/developer/flutter/bin/dart", -- <-- this takes priority over the lookup
	ui = {
		border = "rounded",
		notification_style = "native",
	},
	decorations = {
		statusline = {
			app_version = true,
			device = true,
		},
	},
	widget_guides = {
		enabled = true,
	},
	outline = {
		open_cmd = "30vnew", -- command to use to open the outline buffer
		auto_open = false, -- if true this will open the outline automatically when it is first populated
	},
	closing_tags = {
		highlight = "ErrorMsg",
		prefix = "//",
		enabled = true,
	},
	lsp = {
		color = {
			enabled = true,
			background = false,
			foreground = true,
			virtual_text = true,
			virtual_text_str = "■",
		},
		settings = {
			showTodos = true,
			completeFunctionCalls = true,
			enableSnippets = true,
		},
	},
	debugger = {
		enabled = true,
		run_via_dap = true,
	},
})
