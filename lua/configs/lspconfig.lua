local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- List of LSP and configurations
local lsp_servers = {
    "lua_ls",
}

local custom_servers = {
    lua_ls = {
        settings = {
            Lua = {
                diagnostics = {
                    enable = false,
                    -- globals = { "vim" },
                },
                workspace = {
                    library = {
                        vim.fn.expand("$VIMRUNTIME/lua"),
                        vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                        vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
                        vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                        "${3rd}/love2d/library",
                    },
                    maxPreload = 100000,
                    preloadFileSize = 10000,
                },
            },
        },
    },
    -- Add more custom servers here
}

-- List of default servers
local default_servers = { "html", "cssls" }

-- configuration for default servers
vim.lsp.config("*", {
    capabilities = capabilities,
    on_init = on_init,
})

-- enable LSP
for server, config in pairs(custom_servers) do
    vim.lsp.config(server, config)
    vim.lsp.enable(server)
end

-- enable default servers
for _, server in ipairs(default_servers) do
    vim.lsp.enable(server)
end
