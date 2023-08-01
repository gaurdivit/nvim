-- import betterTerm plugin safely
local setup, betterTerm = pcall(require, "betterTerm")

if not setup then
	return
end

vim.keymap.set({ "n", "t" }, "<C-;>", betterTerm.open, { desc = "Open terminal" })
-- Select term focus
vim.keymap.set({ "n" }, "<leader>tt", betterTerm.select, { desc = "Select terminal" })
-- Create new term
local current = 2
vim.keymap.set({ "n" }, "<leader>tn", function()
	betterTerm.open(current)
	current = current + 1
end, { desc = "New terminal" })

-- configure/enable betterTerm
betterTerm.setup()
