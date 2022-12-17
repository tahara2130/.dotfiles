local cmd = vim.cmd
local o = vim.o
local keymap = vim.keymap
local api = vim.api

cmd("colorscheme tokyonight-night")

-- keymap.set("i", "jk", "<ESC>", { silent = true })
-- keymap.set("n", "<Leader>/", ":let @/ = \"\"<CR>", { silent = true })
-- keymap.set({"n", "v"}, "<Leader>c", ":Commentary<CR>", { silent = true })
-- keymap.set("n", "<Leader>w", ":w<CR>", { silent = true })
-- keymap.set("n", "<Leader>j", ":bprevious<CR>", { silent = true })
-- keymap.set("n", "<Leader>k", ":bnext<CR>", { silent = true })
-- keymap.set("n", "<Leader>q", ":bprevious<CR>:bdelete #<CR>", { silent = true })

-- keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true })
-- keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { silent = true })
-- keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { silent = true })
-- keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true })
-- keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { silent = true })
-- keymap.set("n", "<C-n>", "<cmd>lua vim.lsp.diagnostic.goto.prev()<CR>", { silent = true })
-- keymap.set("n", "<C-p>", "<cmd>lua vim.lsp.diagnostic.goto.next()<CR>", { silent = true })

require('Plugins/dashboard')
require('Plugins/lualine')
require('Plugins/treesitter')
require('nvim-autopairs').setup {}
require('nvim-ts-autotag').setup {filetypes = {"html", "javascriptreact"},}
require('colorizer').setup {'*'}
