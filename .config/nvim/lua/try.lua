-- Purple Vibes Colorscheme
vim.cmd("highlight clear")
vim.o.termguicolors = true
vim.cmd("syntax reset")

local colors = {
  bg = "#1a1b2a",
  fg = "#e0dfee",
  purple = "#9d7cd8",
  pink = "#d58fd5",
  cyan = "#76cce0",
  orange = "#f08c6a",
  green = "#7cd68f",
}

-- basic editor colors
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2940" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#7c6e8e", italic = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#5c5470" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = "#3a2f5c" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2a2940", fg = colors.fg })

-- syntax highlighting
vim.api.nvim_set_hl(0, "String", { fg = colors.green })
vim.api.nvim_set_hl(0, "Function", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, "Type", { fg = colors.orange })
vim.api.nvim_set_hl(0, "Variable", { fg = colors.cyan })
