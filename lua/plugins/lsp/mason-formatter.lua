return {
	"zapling/mason-conform.nvim",
	event = "VeryLazy",
	dependencies = {
		"mason-org/mason.nvim",
		"stevearc/conform.nvim",
	},
	config = function()
		local masonConform = require("mason-conform")
		masonConform.setup({
			ensure_installed = {
				"beautysh",
				"clang-format",
				"goimports",
				"prettierd",
				"pgformatter",
				"rustfmt",
				"stylua",
			},
			ignore_install = {
				"tombi",
			},
		})
	end,
}
