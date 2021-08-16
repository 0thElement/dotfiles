local u = require('utils')

u.create_augroup({
	{"BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)"},
	{"BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)"},
	{"BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)"},
	{"BufWritePre *.r lua vim.lsp.buf.formatting_sync(nil, 100)"},
}, "lsp")

require'lspconfig'.pyright.setup{}
require'lspconfig'.r_language_server.setup{}

-- Keybind
local map = vim.api.nvim_set_keymap
options = { noremap = true }
map('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<CR>", options)
map('n', 'gD', "<cmd>lua vim.lsp.buf.declaration()<CR>", options)
map('n', 'gr', "<cmd>lua vim.lsp.buf.references()<CR>", options)
map('n', 'gi', "<cmd>lua vim.lsp.buf.implementation()<CR>", options)
map('n', 'gK', "<cmd>lua vim.lsp.buf.hover()<CR>", options)
map('n', 'gk', "<cmd>lua vim.lsp.buf.signature_help()<CR>", options)
map('n', 'gn', "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", options)
map('n', 'gp', "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", options)

map("i", "<C-Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<C-Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
