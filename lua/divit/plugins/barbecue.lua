-- import comment plugin safely
local setup, barbecue = pcall(require, "barbecue")
if not setup then
	return
end

-- enable comment
barbecue.setup()
