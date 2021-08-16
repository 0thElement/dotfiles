-- Configure additional languages

-- Keybind
local map = vim.api.nvim_set_keymap
options = { noremap = true }
map('n', '<C-_>', ':Commentary<CR>', options) --Normal mode single line commenting
map('v', '<C-_>', ":'<,'>Commentary<CR>", options) --Visual mode multi line commenting
