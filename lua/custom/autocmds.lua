-- autocmd group : auto-refresh
vim.api.nvim_create_augroup("AutoRefresh", { clear = true })

-- autocmd : file changes when neovim gains focus
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
	group = "AutoRefresh",
	command = "if mode() != 'c' | checktime | endif",
	pattern = "*",
})

-- autocmd group : lsp-config
local lsp_group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true })

-- autocmd : global mappings for all lsps
vim.api.nvim_create_autocmd("LspAttach", {
	group = lsp_group,
	callback = function(ev)
		local map = vim.keymap.set
		-- local opts = { buffer = bufnr, remap = false }

		map("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "go to definition" })
		map("n", "gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "go to references" })
		map("n", "gI", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "go to implementation" })
		map("n", "gD", vim.lsp.buf.declaration, { buffer = ev.buf, desc = "go to declaration" })
		map("n", "gy", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "go to type definition" })
		map("n", "K", vim.lsp.buf.hover, { buffer = ev.buf, desc = "hover docs" })
		map("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "code actions" })
		-- map("n", "[d", vim.diagnostic.goto_prev(), { buffer = ev.buf, desc = "code actions" })
		-- map("n", "]d", vim.diagnostic.goto_next(), { buffer = ev.buf, desc = "code actions" })
	end,
})

-- autocmd : nvim-lint
vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPre" }, {
	callback = function()
		local lint = require("lint")
		lint.try_lint()
	end,
})
