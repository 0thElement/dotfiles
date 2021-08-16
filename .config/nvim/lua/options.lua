local o = vim.o
local wo = vim.wo
local bo = vim.bo

vim.cmd("autocmd BufNewFile * :write")

o.scrolloff = 12

wo.nu = true
wo.rnu = true
wo.wrap = false

bo.tabstop = 4
bo.softtabstop = 4
bo.shiftwidth = 4
