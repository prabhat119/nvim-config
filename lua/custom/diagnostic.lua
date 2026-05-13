local severity = vim.diagnostic.severity

vim.diagnostic.config({
	signs = {
		text = {
			[severity.ERROR] = "✖ ",
			[severity.WARN] = "⚠ ",
			[severity.HINT] = "⚡",
			[severity.INFO] = "ℹ ",
		},
	},
	virtual_text = {
		severity = severity.ERROR,
	},
	underline = true,
	severity_sort = true,
	update_in_insert = false,
})
