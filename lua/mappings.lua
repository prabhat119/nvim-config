require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })
-- black hole registers
map({ "n", "v" }, "d", '"_d', { noremap = true, silent = true })
map({ "n", "v" }, "c", '"_c', { noremap = true, silent = true })
-- cut
map({ "n", "v" }, "x", "d", { noremap = true })
map({ "n", "v" }, "xx", "dd", { noremap = true })
-- move lines
map("n", "<A-j>", ":m .+1<CR>==", { desc = "move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move line down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move line up" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
