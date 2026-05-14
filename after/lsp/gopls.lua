return {
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
		},
	},
	build = {
		templateExtensions = { "gohtml", "html", "gotmpl", "tmpl" },
	},
}
