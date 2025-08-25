return {

{
        'echasnovski/mini.pick',
        enable = false,
        lazy = true,
        cmd = 'Pick',
        version = '*',
        opts = {},
        init = function() vim.ui.select = require('mini.pick').ui_select end,
        keys = {
                {mode ='n','<leader>ff', function() require('mini.pick').builtin.files() end,desc = 'Pick files'},
                {mode ='n','<leader>fg', function() require('mini.pick').builtin.grep_live() end,desc = 'Pick grep live'},
                {mode ='n','<leader>fb', function() require('mini.pick').builtin.buffers() end,desc = 'Pick buffers'},
                {mode ='n','<leader>fh', function() require('mini.extra').pickers.history() end,desc = 'Pick history'},
                {mode ='n','<leader>fr', function() require('mini.extra').pickers.oldfiles() end,desc = 'Pick recent files'},
        },
},

-- optional dependency
{'echasnovski/mini.extra', version = '*', enable = true, opts = {}, }

}
