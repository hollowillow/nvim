vim.o.tabstop = 2 -- number of spaces for a tab
vim.o.softtabstop = 2 -- number of spaces for a tab when editing
vim.o.shiftwidth = 2 -- number of spaces for autoindent
vim.o.expandtab = true -- expand tab to spaces
vim.o.autoindent = true -- enable indent inheritance
vim.opt.listchars = {
        trail = '•',
        extends = '#',
        nbsp = '.',
        precedes = '❮',
        extends = '❯',
        tab = '› ',
        leadmultispace = '| ',
        eol = '󰌑'
}
vim.o.list = true -- show defined whitespace characters
vim.o.colorcolumn = "" -- highlight column at number
