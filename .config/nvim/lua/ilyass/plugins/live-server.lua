-- import comment plugin safely
local setup, live_server = pcall(require, "live-server")
if not setup then
	return
end

-- enable comment
live_server.setup()
