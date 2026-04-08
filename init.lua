vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46/"
vim.g.mapleader = " "

-- autoread options
vim.o.autoread = true

-- autocmd group for auto-refresh
vim.api.nvim_create_augroup("AutoRefresh", { clear = true })

-- file changes when neovim gains focus
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    group = "AutoRefresh",
    command = "if mode() != 'c' | checktime | endif",
    pattern = "*",
})

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        repo,
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require("configs.lazy")

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

-- set relative numbering
vim.opt.relativenumber = true

require("options")
require("autocmds")

vim.schedule(function()
    require("mappings")
end)
