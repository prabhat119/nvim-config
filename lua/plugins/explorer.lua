return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			filters = {
				dotfiles = false,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
				},
				highlight_opened_files = "all",
			},
			view = {
				width = 30,
				side = "left",
				number = false,
				relativenumber = false,
				preserve_window_proportions = true,
			},
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			disable_netrw = true,
			hijack_netrw = true,
		})
	end,
}
