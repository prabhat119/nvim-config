return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local linter = require("lint")

		linter.linters_by_ft = {
			bash = { "shellcheck" },
			c = { "cpplint" },
			cpp = { "cpplint" },
			dockerfile = { "hadolint" },
			go = { "golangcilint" },
			html = { "htmlhint" },
			json = { "jsonlint" },
			lua = { "luacheck" },
			-- postgresql = { "postgres_lsp" },
			-- rust = { "rust_analyzer" },
			-- sql = { "postgres_lsp" },
			-- toml = { "tombi" },
			yaml = { "yamllint" },
		}
	end,
}
