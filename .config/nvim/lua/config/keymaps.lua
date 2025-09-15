-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
vim.keymap.set("n", "gl", function()
    vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

vim.keymap.set("n", "sv", "<C-w>v", { noremap = true, silent = true, desc = "split horizontally" })
vim.keymap.set("n", "sh", "<C-w>s", { noremap = true, silent = true, desc = "split vertically" })
vim.keymap.set("n", "sc", "<C-w>c", { noremap = true, silent = true, desc = "close current split window" })
vim.keymap.set("n", "so", "<C-w>w", { noremap = true, silent = true, desc = "toggle split window" })
