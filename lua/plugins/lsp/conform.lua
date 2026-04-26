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
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang-format" },
			go = { "goimports" },
			rust = { "rustfmt" },
			postgresql = { "pg_format" },
			bash = { "shmft" },
			json = { "prettierd", "prettier", stop_after_first = true },
			-- toml = { "taplo" },
			yaml = { "prettierd", "prettier", stop_after_first = true },
		},

		formatters = {
			["clang-format"] = {
				prepend_args = { "--style={IndentWidth: 4}" },
			},
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
