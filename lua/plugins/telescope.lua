return {
	"nvim-telescope/telescope.nvim",
	version = "0.2.1",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "find directory files",
		},
		{
			"<leader>fv",
			function()
				require("telescope.builtin").git_files()
			end,
			desc = "find git files",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.input("grep > ") })
			end,
			desc = "search expression in files",
		},
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.load_extension("harpoon")
		pcall(telescope.load_extension, "fzf")

		telescope.setup({
			defaults = {
				mappings = {
					n = { ["q"] = actions.close },
				},
			},
		})
	end,
}
