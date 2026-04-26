return {
	"rshkarin/mason-nvim-lint",
	event = "VeryLazy",
	dependencies = {
		"mason-org/mason.nvim",
		"mfussenegger/nvim-lint",
	},
	config = function()
		local masonLint = require("mason-nvim-lint")
		masonLint.setup({
			ensure_installed = {},
			ingore_install = {
				"tombi",
			},
		})
	end,
}
