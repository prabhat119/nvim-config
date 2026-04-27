return {
	"mbbill/undotree",
	event = "VeryLazy",
	keys = {
		{ "<leader>u", vim.cmd.UndotreeToggle, desc = "Toggle to see undotree" },
	},
	config = function()
		vim.g.undotree_WindowLayout = 1
		vim.g.undotree_SetFocusWhenToggle = 1

		local undo_path = vim.fn.expand("~/tools/neovim/undo-tree")
		if vim.fn.isdirectory(undo_path) == 0 then
			vim.fn.mkdir(undo_path, "p")
		end

		vim.opt.undodir = undo_path
		vim.opt.undofile = true
	end,
}
