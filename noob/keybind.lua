vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>jq", ":q<CR>")
vim.keymap.set("n", "<leader>qf", ":q!<CR>")
vim.keymap.set("n", "<leader>xx", "dd")

vim.keymap.set({"i", "n", "v"}, "<A-w>", "<Up>")
vim.keymap.set({"i", "n", "v"}, "<A-a>", "<Left>")
vim.keymap.set({"i", "n", "v"}, "<A-s>", "<Down>")
vim.keymap.set({"i", "n", "v"}, "<A-d>", "<Right>")
