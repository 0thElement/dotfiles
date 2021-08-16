-- Keybind
local map = vim.api.nvim_set_keymap
options = { noremap = true }
map('n', '<C-f>', ":lua require('fzf-lua').files()<CR>", options)
map('n', '<M-f>', ":lua require('fzf-lua').live_grep()<CR>", options)

