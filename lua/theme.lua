vim.opt.termguicolors   = true
vim.cmd.colorscheme("cyberdream")
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#808080", bg = "#000000" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFFFF", bg = "#000000" })
vim.api.nvim_set_hl(0, "CursorLine", { reverse = true })
vim.opt.cursorline      = true
vim.g.airline_theme     = "base16_adwaita"
vim.o.winborder = "rounded"
vim.api.nvim_set_hl(0, "Search", { reverse = true })
