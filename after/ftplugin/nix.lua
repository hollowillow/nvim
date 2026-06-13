vim.o.tabstop = 2 -- number of spaces for a tab
vim.o.softtabstop = 2 -- number of spaces for a tab when editing
vim.o.shiftwidth = 2 -- number of spaces for autoindent
vim.o.expandtab = true -- expand tab to spaces
vim.o.autoindent = true -- enable indent inheritance
vim.opt.listchars = {
    trail = "•",
    nbsp = ".",
    precedes = "❮",
    extends = "❯",
    tab = "› ",
    leadmultispace = "| ",
    eol = "󰌑",
}
vim.o.list = true -- show defined whitespace characters
vim.o.colorcolumn = "100" -- highlight column at number
