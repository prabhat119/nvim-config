local opt = vim.opt

opt.clipboard = "unnamedplus"

opt.guicursor = ""

opt.autoread = true

opt.splitright = true

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = true
opt.linebreak = true
opt.breakindent = true
opt.showbreak = "↪ "

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"

vim.g.mapleader = " "
vim.g.localmapleader = "//"
