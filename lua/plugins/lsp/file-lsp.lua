return {
	"antosha417/nvim-lsp-file-operations",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local fileLsp = require("lsp-file-operations")
		fileLsp.setup()
	end,
}
