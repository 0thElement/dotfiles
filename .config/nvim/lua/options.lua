local o = vim.o
local wo = vim.wo
local bo = vim.bo

vim.cmd("autocmd BufNewFile * :write")

o.scrolloff = 12

wo.nu = true
wo.rnu = true
wo.wrap = false

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
