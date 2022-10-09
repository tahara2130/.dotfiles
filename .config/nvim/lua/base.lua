local cmd = vim.cmd
local o = vim.o
local g = vim.g
local keymap = vim.keymap

cmd("colorscheme catppuccin")

o.clipboard = "unnamedplus"
o.mouse = "a"
o.ignorecase = true
o.lazyredraw = true
o.number = true
o.relativenumber = true
o.shiftwidth = 4
o.tabstop = 4
o.smartindent = true
o.splitbelow = true
o.termguicolors = true
o.updatetime = 100

g.catppuccin_flavor = "mocha"
g.mapleader = " "

keymap.set("i", "jk", "<ESC>", { silent = true })
keymap.set("n", "<Leader>/", ":let @/ = \"\"<CR>", { silent = true })
keymap.set({"n", "v"}, "<Leader>c", ":Commentary<CR>", { silent = true })
keymap.set("n", "<Leader>j", ":bprevious<CR>", { silent = true })
keymap.set("n", "<Leader>k", ":bnext<CR>", { silent = true })
keymap.set("n", "<Leader>q", ":bprevious<CR>:bdelete #<CR>", { silent = true })
-- keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true })
-- keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { silent = true })
-- keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { silent = true })
-- keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true })
-- keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { silent = true })
-- keymap.set("n", "<C-n>", "<cmd>lua vim.lsp.diagnostic.goto.prev()<CR>", { silent = true })
-- keymap.set("n", "<C-p>", "<cmd>lua vim.lsp.diagnostic.goto.next()<CR>", { silent = true })

require('Plugins/dashboard')
require('Plugins/lualine')
require('nvim-autopairs').setup {}
