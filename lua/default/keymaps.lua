-- better split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "Move left to split" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "Move down to split" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "Move up to split" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "Move right to split" })

vim.keymap.set('n', '<C-S-h>', '<C-w><S-h>', { desc = "Move split left" })
vim.keymap.set('n', '<C-S-j>', '<C-w><S-j>', { desc = "Move split down" })
vim.keymap.set('n', '<C-S-k>', '<C-w><S-k>', { desc = "Move split up" })
vim.keymap.set('n', '<C-S-l>', '<C-w><S-l>', { desc = "Move split right" })

-- recenter
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Half page up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Half page down' })

-- save session
local save_dir = "~/.local/share/nvim/sessions"
vim.keymap.set('n', '<leader>s', '<cmd>mksession! ' .. save_dir .. '/default<cr>', { desc = 'Save default sesion' })
vim.keymap.set('n', '<leader>S', ':mksession! ' .. save_dir .. '/default', { desc = 'Save sesion' })

-- toggle boolean
vim.keymap.set('n','gt','<cmd>ToggleBool true false<cr>',{desc='Toggle booleans'})
