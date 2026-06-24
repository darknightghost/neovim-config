vim.g.python3_host_prog = '/usr/bin/python3'

vim.opt.updatetime                              = 500
vim.g["airline#extensions#clock#format"]        = '%Y-%m-%d %H:%M:%S'
vim.g["airline#extensions#clock#updatetime"]    = 500
vim.g["airline#extensions#searchcount#enabled"] = 0

require("load_plugins")
require("vim-config")
require("theme")


