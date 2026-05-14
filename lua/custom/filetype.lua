local ft = vim.filetype

ft.add({
	extension = {
		tmpl = "gotmpl",
		gohtml = "gotmpl",
		gotmpl = "gotmpl",
	},
})

local rl = vim.treesitter.language
rl.register("html", "gotmpl")
