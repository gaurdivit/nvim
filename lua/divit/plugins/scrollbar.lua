-- import gitsigns plugin safely
local setup, scrollbar = pcall(require, "scrollbar")
if not setup then
	return
end

-- configure/enable gitsigns
require("scrollbar").setup({
	handle = {
		color = "#123456", -- Manually obtained color value from nightfly
	},
	marks = {
		Search = { color = "#abcdef" }, -- Adjust as needed
		Error = { color = "#ff0000" },
		Warn = { color = "#ffff00" },
		Info = { color = "#00ff00" },
		Hint = { color = "#0000ff" },
		Misc = { color = "#987654" }, -- Adjust as needed
	},
})
