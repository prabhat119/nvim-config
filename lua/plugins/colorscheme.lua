return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	opts = {
		terminalColors = true,
		theme = "dragon",
		background = {
			dark = "dragon",
			light = "lotus",
		},
	},
	config = function()
		vim.cmd("colorscheme kanagawa-dragon")
	end,
}
