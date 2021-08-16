local map = vim.api.nvim_set_keymap
options = { noremap = true }

---- Buffer controls
-- switch buffer
map('n', '<Tab>', ":if &filetype != 'nerdtree' <bar> :bn! <bar> :else <bar> :wincmd p <bar> endif<cr>", options) 
-- close buffer
map('n', '<C-w>',
	":if &filetype != 'nerdtree' <bar>"..
	":bd! <bar> :if &filetype == 'nerdtree' <bar> :bn <bar> :NERDTreeFocus <bar> :wincmd p <bar> endif"..
	"<bar> endif <cr>",
	options) 

---- Split management
-- Split navigation
map('n', '<Left>', "<C-w>h", options)
map('n', '<Down>', "<C-w>j", options)
map('n', '<Up>', "<C-w>k", options)
map('n', '<Right>', "<C-w>l", options)

-- Split resize
map('n', '<C-Left>', ':vertical resize +3<CR>', options)
map('n', '<C-Right>', ':vertical resize -3<CR>', options) map('n', '<C-Up>', ':resize +3<CR>', options)
map('n', '<C-Down>', ':resize -3<CR>', options)


---- Others
-- Insert mode undo breakpoints
undobreaks = {
	';',
	',', 
	'.', 
	'!', 
	'?',
	'<CR>',
}
for _, c in ipairs(undobreaks) do
	map('i', c, c..'<c-g>u', options)
end

-- Auto closing bracket
brackets = {
	'\"\"',
	'\'\'',
	'()',
	'[]',
	'{}',
	'<>',
}
for _, brpair in ipairs(brackets) do
	map('i', brpair, brpair..'<left><c-g>u', options)
end

-- Keep cursor centered
map('n', 'n', 'nzzzv', options)
map('n', 'N', 'Nzzzv', options)
map('n', 'J', 'mzJ`z', options)

-- Moving text
map('v', '<M-j>', ':m \'>+1<CR>gv=gv', options)
map('v', '<M-k>', ':m \'<-2<CR>gv=gv', options)
map('n', '<M-j>', ':m .+1<CR>==', options)
map('n', '<M-k>', ':m .-2<CR>==', options)
map('i', '<M-j>', '<esc>:m .+1<CR>==i<Right>', options)
map('i', '<M-k>', '<esc>:m .-2<CR>==i<Right>', options)

-- Save file
map('n', '<C-s>', ':w<cr>', options) 

-- Insert line
map('n', '<S-CR>', 'mzO<Esc>`z', options)
map('n', '<CR>', 'mzo<Esc>`z', options)

-- Cut line to below
map('n', '<C-CR>', 'i<CR><Esc>k$', options)

-- Go to beginning or end of line
map('n', 'H', '^', options)
map('n', 'L', '$', options)
