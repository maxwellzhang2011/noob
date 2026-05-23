vim.opt.termguicolors = true

-- bg color
vim.api.nvim_set_hl(0, "Normal", { fg = "#FFFFFF", bg = "#212121" })

-- sytex highlight
vim.api.nvim_set_hl(0, "Comment", { fg = "#6B9E67" })
vim.api.nvim_set_hl(0, "String", { fg = "#77D17C" })
vim.api.nvim_set_hl(0, "Function", { fg = "#F0F0F0" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#3DFFFF" })
vim.api.nvim_set_hl(0, "Character", { fg = "#77D17C" })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#BFBFBF" })
vim.api.nvim_set_hl(0, "Number", { fg = "#BD93F9" })
vim.api.nvim_set_hl(0, "Boolean", { fg = "#BD93F9" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#77D17C" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#8BE9FD" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#FF79C6" })
vim.api.nvim_set_hl(0, "Conditional", { fg = "#FF79C6" })
vim.api.nvim_set_hl(0, "Repeat", { fg = "#FF79C6" })
vim.api.nvim_set_hl(0, "Operator", { fg = "#FF79C6" })
vim.api.nvim_set_hl(0, "Type", { fg = "#8BE9FD" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#FFB86C" })
vim.api.nvim_set_hl(0, "Special", { fg = "#F1FA8C" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = "#F8F8F2" })
vim.api.nvim_set_hl(0, "Error", { fg = "#FF5555" })
vim.api.nvim_set_hl(0, "Todo", { fg = "#FFB86C" })

-- outter theme
vim.opt.cursorline = true

-- file manager
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.api.nvim_set_hl(0, "netrwDir", { fg = "#8BE9FD" })
vim.api.nvim_set_hl(0, "netrwClassify", { fg = "#8BE9FD" })
vim.api.nvim_set_hl(0, "netrwLink", { fg = "#F1FA8C" })
vim.api.nvim_set_hl(0, "netrwSymLink", { fg = "#F1FA8C" })
vim.api.nvim_set_hl(0, "netrwExe", { fg = "#50FA7B" })
vim.api.nvim_set_hl(0, "netrwList", { fg = "#F8F8F2" })
vim.api.nvim_set_hl(0, "netrwTree", { fg = "#6272A4" })
vim.api.nvim_set_hl(0, "netrwMarkFile", { bg = "#44475A" })
vim.api.nvim_set_hl(0, "netrwHide", { fg = "#6272A4" })
require("neo-tree").setup({
  filesystem = {
    renderer = {
      icons = {
        glyphs = {
          folder = {
            arrow_closed = "+",   -- Plus sign for closed folder
            arrow_open = "-",     -- Minus sign for open folder
            default = "[ ]",      -- Empty box for folder
            open = "[-]",         -- Open folder marker
          },
        },
        show = {
          file = false,           -- Turn off file icons entirely
          folder_arrow = true,
        },
      },
    },
  },
})
