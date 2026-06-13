return {
    {
        'cbochs/grapple.nvim',
        config = function()
            -- config
            require('grapple').setup {
                scope = 'git',
                quick_select = '',
                style = 'relative',
                status = true,
                with_opts = {
                    footer = '',
                }
            }

            -- keybinds
            local builtin = require('grapple')
            local keys = vim.keymap.set

            keys('n', '<leader>G', builtin.toggle, { desc = 'Grapple toggle' })
            keys('n', '<leader>gg', builtin.toggle_tags, { desc = 'Grapple toggle tags' })
            local mapping = { a = 1, s = 2, d = 3, f = 4 }
            for key, id in pairs(mapping) do
                keys(
                    'n',
                    '<leader>g' .. key,
                    function() builtin.select({ index = id }) end,
                    { desc = 'Grapple ' .. id }
                )
            end

            -- telescope integration
            -- require('telescope').load_extension('grapple')
            -- keys(
            --     'n',
            --     '<leader>fG',
            --     require('telescope').extensions.grapple.tags,
            --     { desc = 'Telescope grapple' }
            -- )
        end,
    },
}
