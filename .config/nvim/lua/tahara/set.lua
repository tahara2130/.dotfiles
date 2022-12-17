local cmd = vim.cmd
local o = vim.o
local opt = vim.opt
local g = vim.g

g.mapleader = " "

o.clipboard = "unnamedplus"
o.mouse = "a"
o.ignorecase = true
o.lazyredraw = true
o.splitbelow = true

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.termguicolors = true

opt.scrolloff = 8

opt.updatetime = 50

cmd("autocmd BufEnter * set formatoptions-=cro")
cmd("autocmd BufEnter * setlocal formatoptions-=cro")
