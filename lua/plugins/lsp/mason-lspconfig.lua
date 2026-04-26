return {
	"mason-org/mason-lspconfig.nvim",
	event = "VeryLazy",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"lua_ls",
			"clangd",
			"gopls",
			"rust_analyzer",
			"postgres_lsp",
			"bashls",
			"jsonls",
			"taplo",
			"yamlls",
		},
	},
}
