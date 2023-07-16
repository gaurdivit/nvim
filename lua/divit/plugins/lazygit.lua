-- import gitsigns plugin safely
local setup, lazygit = pcall(require, "lazygit")
if not setup then
	return
end

-- configure/enable gitsigns
lazygit.setup()
