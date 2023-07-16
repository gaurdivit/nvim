-- import comment plugin safely
local setup, navic = pcall(require, "nvim-navic")
if not setup then
	return
end

-- enable comment
navic.setup()
