-- import codeRunner plugin safely
local setup, codeRunner = pcall(require, "codeRunner")
if not setup then
	return
end

require("code_runner").setup({
	filetype = {
		java = {
			"cd $dir &&",
			"javac $fileName &&",
			"java $fileNameWithoutExt",
		},
		cpp = {
			"cd $dir &&",
			"make $fileName",
			"./$fileName",
		},
	},
})
