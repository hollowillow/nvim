return {

{
        'stevearc/oil.nvim',
        enabled = true,
        lazy = false,
        cmd = "Oil",
        keys = {{mode = 'n','-','<cmd>Oil<cr>',desc = 'Oil',},},
        opts = { default_file_explorer = true, columns = { "icon", }, },
},

-- optional dependencies
{'nvim-tree/nvim-web-devicons', enabled = true, lazy = false,}

}
