return {

{
        'stevearc/oil.nvim',
        enabled = true,
        lazy = false,
        cmd = "Oil",
        keys = {{mode = 'n','-','<cmd>Oil<cr>',desc = 'Oil',},},
        opts = {
                default_file_explorer = true,
                view_options = { show_hidden = true, },
                columns = { "icon", },
        },
},

}
