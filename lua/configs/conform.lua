local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        json = { "prettierd" },
        cpp = { "clang-format" },
        -- css = { "prettier" },
        -- html = { "prettier" },
    },
    formatters = {

        ["clang-format"] = {

            prepend_args = { "--style={IndentWidth: 4}" },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
