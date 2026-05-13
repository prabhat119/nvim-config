return {
	filetypes = { "go", "gohtml", "gotmpl", "gohtmltmpl" },
	settings = {
		gopls = {
			build = {
				templateExtensions = { "gohtml", "gotmpl" },
			},
		},
	},
}
