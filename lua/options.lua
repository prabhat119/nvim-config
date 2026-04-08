require("nvchad.options")

-- add yours here!

local o = vim.o

--identing
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

--line wrapping
o.wrap = true -- Enable line wrapping
o.linebreak = true -- Don't break words when wrapping
o.breakindent = true -- Wrapped lines continue visually indented
o.showbreak = "↪ " -- Show this character at the start of wrapped lines

-- other
o.scrolloff = 8

-- o.cursorlineopt ='both' -- to enable cursorline!

-- Load NVM node into Neovim's PATH
local function setup_nvm()
    local nvm_dir = vim.fn.expand("$HOME/.nvm")

    -- Find the default/current node version
    -- local nvm_current = vim.fn.expand(nvm_dir .. "/versions/node/v*/bin")

    -- Or get the current version from .nvmrc or nvm alias default
    local handle = io.popen(
        "bash -c 'source "
            .. nvm_dir
            .. "/nvm.sh && nvm which current 2>/dev/null'"
    )
    if handle then
        local node_path = handle:read("*a"):gsub("%s+$", "")
        handle:close()

        if node_path ~= "" then
            local node_bin = vim.fn.fnamemodify(node_path, ":h")
            vim.env.PATH = node_bin .. ":" .. vim.env.PATH
        end
    end
end

setup_nvm()
