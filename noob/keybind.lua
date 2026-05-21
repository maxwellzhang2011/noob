vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", ":Lexplore<CR>")
vim.keymap.set("n", "<leader>ws", ":w<CR>")
vim.keymap.set({"i", "n"}, "jj", "<Esc>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>jq", ":q<CR>")
vim.keymap.set("n", "<leader>qf", ":q!<CR>")
vim.keymap.set("n", "<leader>xx", "dd")
vim.keymap.set("n", "<<", "<C-w><")
vim.keymap.set("n", ">>", "<C-w>>")
vim.keymap.set("n", "=", "<C-w>+")
vim.keymap.set("n", "-", "<C-w>-")
vim.keymap.set("n", "<A-W>", "<C-w><Up>")
vim.keymap.set("n", "<A-A>", "<C-w><Left>")
vim.keymap.set("n", "<A-S>", "<C-w><Down>")
vim.keymap.set("n", "<A-D>", "<C-w><Right>")
vim.keymap.set("n", "<leader>sh", ":split<CR>")
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>tv", ":split | term<CR>")
vim.keymap.set("n", "<leader>th", ":vsplit | term<CR>")
vim.keymap.set("t", "<C-e>", "<C-\\><C-n>")
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', { noremap = true })

vim.keymap.set({"i", "n", "v"}, "<A-w>", "<Up>")
vim.keymap.set({"i", "n", "v"}, "<A-a>", "<Left>")
vim.keymap.set({"i", "n", "v"}, "<A-s>", "<Down>")
vim.keymap.set({"i", "n", "v"}, "<A-d>", "<Right>")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true
