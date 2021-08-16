local cmd = vim.cmd

-- Vertical split
cmd("highlight VertSplit ctermbg=NONE ctermfg=8 cterm=NONE")

-- Number
cmd("highlight LineNr ctermfg=8")
cmd("highlight CursorLineNr ctermfg=2")
cmd("highlight NonText ctermfg=8")

-- Lsp
cmd("highlight LspDiagnosticsDefaultError ctermfg=1")
cmd("highlight LspDiagnosticsDefaultHint ctermfg=4")
cmd("highlight LspDiagnosticsDefaultWarning ctermfg=6")
cmd("highlight LspDiagnosticsDefaultInformation ctermfg=2")

-- Pmenu
cmd("highlight Pmenu ctermbg=0 ctermfg=8")
cmd("highlight PmenuSel ctermbg=0 ctermfg=190")

-- Bracket
cmd("highlight MatchParen ctermfg=6 ctermbg=NONE")
