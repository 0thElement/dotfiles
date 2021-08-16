local u = require('utils')

u.create_augroup({
	--prevent other buffers from replacing nerdtree
	--{"BufEnter * if bufname('#') =~ 'NERD_tree_\\d\\+' && bufname('%') !~ 'NERD_tree_\\d\\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute 'normal! \\<C-W>w' | execute 'buffer'.buf | endif"}, 
	--exit vim when nerdtree is the only buffer left
	--{"BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif"},
	--start nerdtree on startup
	{"VimEnter * NERDTree | wincmd p"},
}, 'nerdtree')

vim.cmd("let g:NERDTreeFileExtensionHighlightFullName = 1")
vim.cmd("let g:NERDTreeExactMatchHighlightFullName = 1")
vim.cmd("let g:NERDTreePatternMatchHighlightFullName = 1")

-- Keybind
local map = vim.api.nvim_set_keymap
options = { noremap = true }
map('n', '<C-p>', ':NERDTreeFocus<CR>', options) --Toggle nerdtree buffer
map('n', '<M-p>', ':NERDTreeToggle<CR>', options) --Toggle nerdtree buffer
