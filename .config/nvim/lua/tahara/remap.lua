local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { silent = true })
keymap.set("n", "<Leader>/", ":let @/ = \"\"<CR>", { silent = true })
keymap.set({"n", "v"}, "<Leader>c", ":Commentary<CR>", { silent = true })
keymap.set("n", "<Leader>w", ":w<CR>", { silent = true })
keymap.set("n", "<Leader>j", ":bprevious<CR>", { silent = true })
keymap.set("n", "<Leader>k", ":bnext<CR>", { silent = true })
keymap.set("n", "<Leader>q", ":bprevious<CR>:bdelete #<CR>", { silent = true })

local lang_maps = {
    python = { exec = "python3 %"},
    go = { exec = "go run %" },
    c = { build = "gcc % -o %:r", exec = "./%:r"}
}

for lang, data in pairs(lang_maps) do
    if data.build ~= nil then
        vim.api.nvim_create_autocmd("FileType", { command = "nnoremap <Leader>b :! " .. data.build .. "<CR>", pattern = lang })
    end
    vim.api.nvim_create_autocmd("FileType", { command = "nnoremap <Leader>e :!" .. data.exec .. "<CR>", pattern = lang })
end
