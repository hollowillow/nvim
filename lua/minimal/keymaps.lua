local keymap = vim.keymap.set

vim.g.mapleader = " "

-- better split navigation
keymap('n', '<C-h>', '<C-w>h', { desc = "Move left to split" })
keymap('n', '<C-j>', '<C-w>j', { desc = "Move down to split" })
keymap('n', '<C-k>', '<C-w>k', { desc = "Move up to split" })
keymap('n', '<C-l>', '<C-w>l', { desc = "Move right to split" })

keymap('n', '<C-S-h>', '<C-w><S-h>', { desc = "Move split left" })
keymap('n', '<C-S-j>', '<C-w><S-j>', { desc = "Move split down" })
keymap('n', '<C-S-k>', '<C-w><S-k>', { desc = "Move split up" })
keymap('n', '<C-S-l>', '<C-w><S-l>', { desc = "Move split right" })

keymap('n', '<C-Up>', '<C-w>+', { desc = "Increase split height" })
keymap('n', '<C-Down>', '<C-w>-', { desc = "Decrease split height" })
keymap('n', '<C-Right>', '<C-w>>', { desc = "Increase split width" })
keymap('n', '<C-Left>', '<C-w><', { desc = "Decrease split width" })

-- recenter
keymap('n', '<C-u>', '<C-u>zz', { desc = 'Half page up' })
keymap('n', '<C-d>', '<C-d>zz', { desc = 'Half page down' })

-- save session
local save_dir = "~/.local/share/nvim/sessions"
keymap('n', '<leader>s', '<cmd>mksession! ' .. save_dir .. '/default<cr>', { desc = 'Save default sesion' })
keymap('n', '<leader>ss', '<cmd>source ' .. save_dir .. '/default<cr>', { desc = 'Source default sesion' })

-- other
keymap("t", "<Esc>", "<C-\\><C-N>") -- exit terminal mode
keymap("n", "grd", "<cmd>lua vim.lsp.buf.definition()<CR>") -- go to definition
