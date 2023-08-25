-- import transparent plugin safely
local setup, transparent = pcall(require, "transparent")
if not setup then
	return
end

-- configure/enable transparent
transparent.setup()
