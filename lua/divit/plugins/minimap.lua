-- import gitsigns plugin safely
local setup, minimap = pcall(require, "minimap")
if not setup then
	return
end

require("minimap").setup({
	minimap_width = 10,
	minimap_auto_start = 1,
	minimap_auto_start_win_enter = 1,
})
