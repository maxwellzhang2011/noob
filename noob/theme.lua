vim.opt.termguicolors = true

-- bg color
vim.api.nvim_set_hl(0, "Normal", { bg = "#212121" })

-- sytex highlight
vim.api.nvim_set_hl(0, "Comment", {fg = "#6B9E67" })
vim.api.nvim_set_hl(0, "String", { fg = "#77D17C" })
vim.api.nvim_set_hl(0, "Functions", { fg="#F0F0F0"})
vim.api.nvim_set_hl(0, "Keyword", { fg="#3DFFFF" } )
vim.api.nvim_set_hl(0, "Character", { fg="#77D17C"})
vim.api.nvim_set_hl(0, "SpecialChar",{fg="#BFBFBF"})
