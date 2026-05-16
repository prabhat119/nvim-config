return {
	"mason-org/mason-lspconfig.nvim",
	event = "VeryLazy",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"bashls",
			"clangd",
			"docker_language_server",
			"gopls",
			"html",
			"jsonls",
			"lua_ls",
			"postgres_lsp",
			"rust_analyzer",
			"tombi",
			"yamlls",
		},
	},
}
