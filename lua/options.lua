local o = vim.o

o.number = true
o.relativenumber = true
o.signcolumn = "yes"
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = false
o.softtabstop = 4
o.winborder = "rounded"
o.wrap = false
o.clipboard = "unnamedplus"

o.foldenable = true
o.foldmethod = 'expr'
o.foldexpr = 'v:lua.vim.lsp.foldexpr()'
o.foldcolumn = '1'
o.foldlevel = 99
o.foldlevelstart = 99

o.viewoptions = "cursor,folds,slash,unix"
o.termguicolors = true

vim.cmd.colorscheme("zenbones")
