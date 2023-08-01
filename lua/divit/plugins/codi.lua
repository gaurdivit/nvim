-- import codi plugin safely
local setup, codi = pcall(require, "codi")
if not setup then
	return
end

-- configure/enable codi
codi.setup()
