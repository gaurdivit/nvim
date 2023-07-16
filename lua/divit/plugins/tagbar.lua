-- import tagbar plugin safely
local setup, tagbar = pcall(require, "tagbar")
if not setup then
	return
end

-- keymap in "keymaps file"

-- configure/enable toggleterm
tagbar.setup()
