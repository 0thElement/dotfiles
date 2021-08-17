local cmd = vim.cmd
local u = require('utils')

local colortheme = 'gruvbox'
local airlinetheme = 'dark'

-- Auto launch colortheme
local common = "VimEnter * ++nested"

u.create_augroup({
	{common, "colorscheme", colortheme},
	{common, "AirlineTheme", airlinetheme},
	
	{common, "highlight Normal ctermbg=NONE ctermfg=15"},

	{common, "highlight VertSplit ctermbg=NONE ctermfg=8 cterm=NONE"},

	{common, "highlight LineNr ctermfg=240"},
	{common, "highlight CursorLineNr ctermbg=NONE ctermfg=155"},
	{common, "highlight NonText ctermfg=232"},

	-- Lsp
	{common, "highlight LspDiagnosticsDefaultError ctermfg=210"},
	{common, "highlight LspDiagnosticsDefaultHint ctermfg=195"},
	{common, "highlight LspDiagnosticsDefaultWarning ctermfg=227"},
	{common, "highlight LspDiagnosticsDefaultInformation ctermfg=192"},

	-- Pmenu
	{common, "highlight Pmenu ctermbg=233 ctermfg=240"},
	{common, "highlight PmenuSel ctermbg=233 ctermfg=190"},
}, 'color')
