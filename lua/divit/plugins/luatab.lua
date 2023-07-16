-- import comment plugin safely
local setup, luatab = pcall(require, "luatab")
if not setup then
	return
end

-- require("luatab").setup({
-- title = function()
-- return ""
-- end,
-- modified = function()
-- 	return ""
-- end,
-- windowCount = function()
-- 	return ""
-- end,
-- devicon = function()
-- 	return ""
-- end,
-- separator = function()
-- 	return ""
-- end,
-- })

-- enable comment
luatab.setup()
