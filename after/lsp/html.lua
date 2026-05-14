return {
	filetypes = { "html", "gotmpl" },
	settings = {
		html = {
			format = {
				enable = true,
			},
		},
	},
	init_options = {
		provideFormatter = false,
	},
	root_markers = { ".git", "go.mod", "package.json" },
}
