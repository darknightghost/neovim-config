vim.opt.fileencodings = "utf-8,gbk,big5,cp936,gb18030,gb2312,utf-16"
vim.opt.encoding = "utf-8"

vim.api.nvim_create_autocmd({"BufNewFile", "BufReadPre"}, {
  pattern = "*",
  callback = function()
    vim.bo.fileencoding = "utf-8"
  end,
})

-- Treat *.htcfg as *.yaml.
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.htcfg",
  callback = function()
    vim.bo.filetype = "yaml"
  end,
})

-- Auto dectect file type.
vim.cmd.filetype("on")
vim.cmd.filetype("plugin", "on")
vim.opt.autochdir = false

-- Move cursor to the las position when file opened.
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lnum = mark[1]
    local line_count = vim.api.nvim_buf_line_count(0)
    if lnum > 1 and lnum <= line_count then
      vim.cmd.normal({ "g'\"", bang = true })
    end
  end,
})

-- Indent.
vim.cmd.filetype("plugin", "indent", "on")
vim.opt.expandtab = true
vim.opt.smarttab = false
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.autowrite = true
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.cindent = true
vim.opt.cinoptions = "{0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s"
vim.opt.backspace = "2"

-- UI.
vim.opt.showmatch = true
vim.opt.linebreak = true
vim.opt.whichwrap = "b,s,<,>,[,]"
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.previewwindow = true
vim.opt.history = 100
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.colorcolumn = "80"

-- Command line.
vim.opt.showcmd = true
vim.opt.showmode = true

-- Search.
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Update file automatically when file changes.
vim.opt.autoread = true

-- Diagnostic.
vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = true
})

-- Save file and format.
function format_and_save()
    -- Save file.
    vim.cmd("w!")
    local filename = vim.cmd("echo expand(\'%:p\')")
    local line_num = vim.cmd("echo line(\".\")")

    local format_script = vim.fn.stdpath("config") .. "/call-format"
    if vim.fn.executable(format_script) == 1 then
        vim.cmd("exec \"! /usr/bin/python3 /usr/bin/ht-code-format " .. filename .. "\"")
        vim.cmd("e!")
    end

end

vim.keymap.set("n", "<C-S>", "<ESC>:lua format_and_save()<CR><CR><CR>")
vim.keymap.set("i", "<C-S>", "<ESC>:lua format_and_save()<CR><CR><CR>")
