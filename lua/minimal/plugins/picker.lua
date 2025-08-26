return {

-- basic pickers
{
        'echasnovski/mini.pick',
        cond = true,
        version = '*',
        lazy = true,
        cmd = 'Pick',
        init = function() vim.ui.select = require('mini.pick').ui_select end,
        keys = {
                {'<leader>ff','<cmd>Pick files<cr>',desc='Find files'},
                {'<leader>fg','<cmd>Pick grep_live<cr>',desc='Find grep'},
                {'<leader>fb','<cmd>Pick buffers<cr>',desc='Find buffers'}
        },
        opts = {
                options = {content_from_bottom = true},
                mappings = {move_down = '<C-j>', move_up = '<C-k>'},
                window = {
                        config = function()
                                local height = math.floor(0.618 * vim.o.lines)
                                local width = math.floor(0.618 * vim.o.columns)
                                return {
                                        anchor = 'NW',
                                        height = height,
                                        width = width,
                                        row = math.floor(0.5 * (vim.o.lines - height)),
                                        col = math.floor(0.5 * (vim.o.columns - width))
                                }
                        end
                }
        }
},

-- extra pickers
{
        'echasnovski/mini.extra',
        cond = true,
        version = '*',
        keys = {
                {'<leader>fh','<cmd>Pick history<cr>',desc='Find command history'},
                {'<leader>fH','<cmd>Pick help<cr>',desc='Find help page'},
                {'<leader>fo','<cmd>Pick oldfiles<cr>',desc='Find old files'},
                {'<leader>fk','<cmd>Pick keymaps<cr>',desc='Find keymaps'},
                {'<leader>fr','<cmd>Pick registers<cr>',desc='Find registers'}
        },
        opts = {}
}

}
