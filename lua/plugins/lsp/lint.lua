return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			lua = { "luacheck" },
			cpp = { "cpplint" },
			go = { "golangcilint" },
			-- rust = { "rust-analyzer"},
			-- postgresql = { "postgres-language-server" },
			bash = { "shellcheck" },
			json = { "jsonlint" },
			toml = { "tombi" },
			yaml = { "yamllint" },
		}
	end,
}
