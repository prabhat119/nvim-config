local options = {
    ensure_installed = {
        "c",
        "cpp",
        "bash",
        "go",
        "javascript",
        "lua",
        "luadoc",
        "markdown",
        "printf",
        "rust",
        "toml",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
