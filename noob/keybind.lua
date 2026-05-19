vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>qq", ":q<CR>")
vim.keymap.set("n", "<leader>qf", ":q!<CR>")

vim.keymap.set({"n", "v"}, "a", "h")
vim.keymap.set({"n", "v"}, "s", "j")
vim.keymap.set({"n", "v"}, "w", "k")
vim.keymap.set({"n", "v"}, "d", "l")

vim.keymap.set("i", "<A-w>", "<Up>")
vim.keymap.set("i", "<A-a>", "<Left>")
vim.keymap.set("i", "<A-s>", "<Down>")
vim.keymap.set("i", "<A-d>", "<Right>")
