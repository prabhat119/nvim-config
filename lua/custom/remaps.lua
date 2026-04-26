local remap = vim.keymap.set

remap("i", "jk", "<ESC>", { desc = "enter normal mode" })
remap("v", "q", "<ESC>", { desc = "enter normal mode" })
remap("n", ";", ":", { desc = "enter command mode" })
remap("n", "<leader>dm", vim.cmd.Ex, { desc = "enter directory buffer mode" })

remap("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "open diagnostic for error" })

remap("i", "jl", "<ESC>la", { desc = "go to left during insert mode" })
remap("i", "jf", "<BS>", { desc = "backspace during insert mode" })

remap({ "n", "v" }, "d", '"_d', { desc = "delete without yank" })
remap({ "n", "v" }, "<leader>d", "d", { desc = "delete with yank" })

remap({ "n", "v" }, "c", '"_c', { desc = "change without yank" })
remap({ "n", "v" }, "<leader>c", "c", { desc = "change with yank" })

remap({ "n", "v" }, "x", '"_x', { desc = "delete char forward without yank" })
remap({ "n", "v" }, "X", '"_X', { desc = "delete char backward without yank" })

remap({ "n", "v" }, "s", '"_s', { desc = "delete char without yank, insert" })

remap({ "n", "v" }, "<leader>yy", "yyp", { desc = "copy line under" })

remap("v", "J", ":m '>+1<CR>gv=gv", { desc = "move selcted line down" })
remap("v", "K", ":m '<-2<CR>gv=gv", { desc = "move selected line up" })

remap("n", "<CR>", "mzo<Esc>", { desc = "create line below" })

remap("n", "J", "mzJ`z", { desc = "move below line to current, cursor stays" })
remap("n", "<C-d>", "<C-d>zz", { desc = "scroll down, cursor middle" })
remap("n", "<C-u>", "<C-u>zz", { desc = "scroll up, cursor middle" })
remap("n", "n", "nzzzv", { desc = "scroll down searched term, cursor middle" })
remap("n", "X", "Nzzzv", { desc = "scroll up searched term, cursor middle" })

remap("x", "p", '"_dp', { desc = "hightlight paste" })

-- remap("n", "<C-j>", "<cmd>cnext<CR>zz", { desc = "scroll up searched term, cursor middle" })
-- remap("n", "<C-k>", "<cmd>cprev<CR>zz", { desc = "scroll up searched term, cursor middle" })
remap("n", "<leader>j", "<cmd>lnext<CR>zz", { desc = "scroll up searched term, cursor middle" })
remap("n", "<leader>k", "<cmd>lprev<CR>zz", { desc = "scroll up searched term, cursor middle" })

remap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gc<Left><Left><Left>", { desc = "replace with choice" })

remap("n", "<leader>x", "<cmd>chmod +x %<CR>", { desc = "make executable" })
