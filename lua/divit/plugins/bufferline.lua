-- import comment plugin safely
local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

-- require("bufferline").setup({
-- 	options = {
-- 		numbers = "none",
-- 		diagnostics = "nvim_lsp",
-- 		separator_style = "slant" or "padded_slant",
-- 		show_tab_indicators = true,
-- 		show_buffer_close_icons = false,
-- 		show_close_icon = false,
-- 		mode = "tabs", -- tabs or buffers
-- 	},
-- })

-- enable comment
bufferline.setup()
