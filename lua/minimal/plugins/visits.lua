return {

{
        'echasnovski/mini.visits',
        enable = true,
        version = '*',
        opts = {
                track = { event = '', },
        },
        keys = {
                {mode = 'n', '<leader>vv', function() require('mini.visits').add_label("core") end, desc = 'Add core label'},
                {mode = 'n', '<leader>vV', function() require('mini.visits').remove_label("core") end, desc = 'Add core label'},
                {mode = 'n', '<leader>vl', function() require('mini.visits').add_label() end, desc = 'Add label'},
                {mode = 'n', '<leader>vL', function() require('mini.visits').remove_label() end, desc = 'Add label'},
                {mode = 'n', '<leader>fv', function() require('mini.visits').select_path(nil, { filter = "core" }) end,desc = 'Pick from core label'},
                {mode = 'n', '<leader>fV', function() require('mini.visits').select_label() end,desc = 'Pick visits'},
                {mode = 'n', '[v', function() require('mini.visits').iterate_paths("backward") end,desc = 'Delete visits'},
                {mode = 'n', '[V', function() require('mini.visits').iterate_paths("first") end,desc = 'First visit'},
                {mode = 'n', ']v', function() require('mini.visits').iterate_paths("forward") end,desc = 'Next visit'},
                {mode = 'n', ']V', function() require('mini.visits').iterate_paths("last") end,desc = 'Last visit'},
        },
}

}
