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
			ensure_installed = {
				"cpplint",
				"golangcilint",
				"hadolint",
				"htmlhint",
				"jsonlint",
				"luacheck",
				"shellcheck",
				"yamllint",
			},
			ingore_install = {
				"postgres_lsp",
				"rust_analyzer",
				"tombi",
			},
		})
	end,
}
