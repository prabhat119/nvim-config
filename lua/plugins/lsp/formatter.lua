return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	keys = {
		{
			"<leader>fm",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = { "n", "v" },
			desc = "Format buffer or range",
		},
	},
	config = function()
		local formatter = require("conform")

		formatter.setup({
			formatters_by_ft = {
				bash = { "beautysh" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				go = { "goimports" },
				gotmpl = { "goimports" },
				html = { "oxfmt" },
				javascript = { "oxfmt" },
				javascriptreact = { "oxfmt" },
				json = { "oxfmt" },
				lua = { "stylua" },
				postgresql = { "pg_format" },
				rust = { "rustfmt" },
				sql = { "pg_format" },
				toml = { "tombi" },
				typescript = { "oxfmt" },
				typescriptreact = { "oxfmt" },
				yaml = { "oxfmt" },
				zsh = { "beautysh" },
			},

			formatters = {
				["clang-format"] = {
					prepend_args = { "--style={IndentWidth: 4}" },
				},
				oxfmt = {
					env = {
						PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/after/formatter/oxftrc.json"),
					},
				},
			},

			format_on_save = {
				lsp_falback = true,
				async = false,
				timeout_ms = 1000,
			},
		})
	end,
}
