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
				html = { "prettierd", "prettier", stop_after_first = true },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				json = { "prettierd", "prettier", stop_after_first = true },
				lua = { "stylua" },
				postgresql = { "pgformatter" },
				rust = { "rustfmt" },
				sql = { "pgformatter" },
				toml = { "tombi" },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				yaml = { "prettierd", "prettier", stop_after_first = true },
				zsh = { "beautysh" },
			},

			formatters = {
				["clang-format"] = {
					prepend_args = { "--style={IndentWidth: 4}" },
				},
				prettierd = {
					env = {
						PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/after/formatter/prettierrc.json"),
					},
				},
				prettier = {
					prepend_args = function()
						return { "--config", vim.fn.expand("~/.config/nvim/after/formatter/prettierrc.json") }
					end,
				},
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
