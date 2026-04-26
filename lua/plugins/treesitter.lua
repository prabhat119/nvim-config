return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		sync_install = true,
		auto_install = true,
		highlight = {
			enable = true,
			use_languagetree = true,
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true },
	},
	config = function(opts)
		local treesitter = require("nvim-treesitter")
		treesitter.setup(opts)
		treesitter.install({
			"c",
			"cpp",
			"bash",
			"go",
			"lua",
			"luadoc",
			"markdown",
			"rust",
			"toml",
			"vim",
			"vimdoc",
			"yaml",
		})
	end,
}
