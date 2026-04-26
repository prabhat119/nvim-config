return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = "VeryLazy",
	config = function()
		local ibl = require("ibl")
		local hooks = require("ibl.hooks")
		local highlight = { "DarkGray" }

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "DarkGray", { fg = "#2A2A2A" })
		end)

		ibl.setup({
			indent = { highlight = highlight },
		})
	end,
}
