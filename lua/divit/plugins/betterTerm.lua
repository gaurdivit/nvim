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
vim.keymap.set({ "t" }, "<C-u>", function()
	betterTerm.open(current)
	current = current + 1
end, { desc = "New terminal" })
vim.keymap.set({ "t" }, "<C-i>", function()
	betterTerm.open(current)
	current = current - 1
end, { desc = "New terminal" })
-- use the best keymap for you
-- change 1 for other terminal id
-- Change "get_filetype_command()" to "get_project_command().command" for running projects
vim.keymap.set("n", "<leader>rr", function()
	require("betterTerm").send(
		require("code_runner.commands").get_filetype_command(),
		1,
		{ clean = false, interrupt = true }
	)
end, { desc = "Excute File" })

-- configure/enable betterTerm
betterTerm.setup({ position = "bot", size = 10 })
