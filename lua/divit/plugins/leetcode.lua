-- import comment plugin safely
local setup, leetcode = pcall(require, "leetcode")
if not setup then
	return
end

-- enable comment
leetcode.setup()
