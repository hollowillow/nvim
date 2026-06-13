return {
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        config = function()
            -- config
            require('flash').setup {
                search = { mode = "fuzzy" },
                jump = { autojump = true },
                label = {
                    before = true,
                    after = false,
                    style = 'overlay',
                },
                modes = {
                    char = { enabled = false },
                },
            }

            -- keybinds
            local builtin = require('flash')
            local keys = vim.keymap.set

            keys(
                {'n', 'x', 'o'},
                's',
                function() builtin.jump() end,
                { desc = 'Flash jump' }
            ) 
            keys(
                {'n', 'x', 'o'},
                'S',
                function() builtin.treesitter() end,
                { desc = 'Flash treesitter' }
            )
        end,
    }
}
