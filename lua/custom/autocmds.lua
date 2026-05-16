-- autocmd group : auto-refresh
vim.api.nvim_create_augroup("AutoRefresh", { clear = true })

-- autocmd : file changes when neovim gains focus
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
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

		map("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "go to definition" })
		map("n", "gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "go to references" })
		map("n", "gR", vim.lsp.buf.rename, { buffer = ev.buf, desc = "rename all references" })
		map("n", "gI", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "go to implementation" })
		map("n", "gD", vim.lsp.buf.declaration, { buffer = ev.buf, desc = "go to declaration" })
		map("n", "gy", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "go to type definition" })
		map("n", "K", function()
			vim.lsp.buf.hover({
				syntax = "markdown",
				border = "rounded",
			})
		end, { buffer = ev.buf, desc = "hover docs" })
		map("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "code actions" })
	end,
})

-- autocmd : nvim-lint
vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPre" }, {
	callback = function()
		local lint = require("lint")
		lint.try_lint()
	end,
})

-- autogroup : command on file type
local cmdGroup = vim.api.nvim_create_augroup("RunCmdOnFileType", { clear = true })

-- function : to map file type
local function setRunCommand(buf)
	local ft = vim.bo[buf].filetype

	local commandMap = {
		python = "python3 %",
		-- javascript = "node %",
		-- typescript = "ts-node %",
		lua = "lua %",
		c = "gcc % -o %< && ./%<",
		cpp = "g++ % -o %< && ./%<",
		sh = "bash %",
		go = "go run %",
		rust = "cargo run",
	}

	local runCommand = commandMap[ft]
	if not runCommand then
		return
	end

	vim.keymap.set("n", "<leader>r", function()
		vim.cmd("w")
		vim.cmd("vsplit")
		vim.cmd("terminal " .. runCommand)
	end, { buffer = buf })
end

vim.api.nvim_create_autocmd("FileType", {
	group = cmdGroup,
	callback = function(args)
		setRunCommand(args.buf)
	end,
})
