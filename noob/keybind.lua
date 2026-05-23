vim.g.mapleader = " "

vim.cmd("packloadall")
require("neo-tree").setup({
  window = {
    position = "left",
    width = 30,
  },
  filesystem = {
    hijack_netrw_behavior = "open_current",
  },
})
vim.keymap.set("n", "<leader>fe", ":Neotree toggle<CR>", { noremap = true, silent = true })
if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
  vim.cmd("Neotree position=left")
end

vim.keymap.set("n", "<leader>ws", ":w<CR>")
vim.keymap.set({"i", "n"}, "jj", "<Esc>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>jq", ":q<CR>")
vim.keymap.set("n", "<leader>fq", ":q!<CR>")
vim.keymap.set("n", "<leader>xx", "dd")
vim.keymap.set("n", "<Left>", "<C-w><")
vim.keymap.set("n", "<Right>", "<C-w>>")
vim.keymap.set("n", "=", "<C-w>+")
vim.keymap.set("n", "-", "<C-w>-")
vim.keymap.set("n", "<A-W>", "<C-w><Up>")
vim.keymap.set("n", "<A-A>", "<C-w><Left>")
vim.keymap.set("n", "<A-S>", "<C-w><Down>")
vim.keymap.set("n", "<A-D>", "<C-w><Right>")
vim.keymap.set("n", "<leader>sh", ":split<CR>")
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>tv", ":vsplit | term<CR>")
vim.keymap.set("n", "<leader>th", ":split | term<CR>")
vim.keymap.set("t", "<C-e>", "<C-\\><C-n>")

vim.keymap.set({"i", "n", "v"}, "<A-w>", "<Up>")
vim.keymap.set({"i", "n", "v"}, "<A-a>", "<Left>")
vim.keymap.set({"i", "n", "v"}, "<A-s>", "<Down>")
vim.keymap.set({"i", "n", "v"}, "<A-d>", "<Right>")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true
