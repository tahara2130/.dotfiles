local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { silent = true })
keymap.set("n", "<Leader>/", ":let @/ = \"\"<CR>", { silent = true })
keymap.set({"n", "v"}, "<Leader>c", ":Commentary<CR>", { silent = true })
keymap.set("n", "<Leader>w", ":w<CR>", { silent = true })
keymap.set("n", "<Leader>j", ":bprevious<CR>", { silent = true })
keymap.set("n", "<Leader>k", ":bnext<CR>", { silent = true })
keymap.set("n", "<Leader>q", ":bprevious<CR>:bdelete #<CR>", { silent = true })
