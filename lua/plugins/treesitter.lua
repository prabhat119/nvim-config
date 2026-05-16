return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")
		local languages = {
			"bash",
			"c",
			"cpp",
			"css",
			"dockerfile",
			"go",
			"html",
			"javascript",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"rust",
			"sql",
			"toml",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
			"zsh",
		}

		treesitter.setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
			auto_install = true,
		})

		treesitter.install(languages)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = languages,
			callback = function()
				local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
				if lang then
					vim.treesitter.start()
				end
			end,
		})
	end,
}
