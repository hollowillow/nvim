-- search options
vim.o.hlsearch = false -- disable search highlight
vim.o.ignorecase = true -- ignore case in search
vim.o.smartcase = true -- smart case in search

-- file options
vim.o.swapfile = false -- disable swap file
vim.o.undofile = true -- enable persistent undo
vim.o.autoread = true -- automatically read external changes

-- display options
vim.o.termguicolors = true -- enable true color
vim.o.signcolumn = "yes:1" -- always show sign column
vim.o.wrap = false -- disable line wrapping
vim.o.cursorline = true -- highlight current line
vim.o.cursorcolumn = true -- highlight current column
vim.o.colorcolumn = "80" -- highlight column at number
vim.o.number = true -- show line numbers
vim.o.relativenumber = true -- line numbers relative to cursor
vim.o.splitbelow = true -- open horizontal splits bellow
vim.o.splitright = true -- open vertical splits to the right

-- tabs and indentation
vim.o.tabstop = 8 -- number of spaces for a tab
vim.o.softtabstop = 8 -- number of spaces for a tab when editing
vim.o.shiftwidth = 8 -- number of spaces for autoindent
vim.o.expandtab = true -- expand tab to spaces
vim.o.autoindent = true -- enable indent inheritance
vim.o.listchars = 'trail:•,extends:#,nbsp:.,precedes:❮,extends:❯,tab:› ,leadmultispace:|       '
vim.o.list = true -- show defined whitespace characters

-- other
vim.o.clipboard = "unnamedplus" -- use system clipboard
vim.o.scrolloff = 10 -- keep number of lines above/below cursor
