return {

{
        'echasnovski/mini.sessions',
        version = '*',
        opts = {},
        keys = {
                {mode = 'n', '<leader>fs', function() require('mini.sessions').select("read") end, desc = 'Pick session'},
                {mode = 'n', '<leader>fS', function() require('mini.sessions').select("delete", "force") end, desc = 'Delete session'},
                {mode = 'n', '<leader>s', function() require('mini.sessions').read("default") end, desc = 'Read default session'},
                {mode = 'n', '<leader>S', function() require('mini.sessions').write("default") end, desc = 'Write to default session'},
        }
},

}
