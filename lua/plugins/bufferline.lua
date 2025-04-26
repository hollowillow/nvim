return {

{
        'akinsho/bufferline.nvim',
        enabled = true,
        lazy = false,
        keys = {
                {mode = 'n','<leader>bn','<cmd>enew<cr>',desc = 'bdelete %',},
                {mode = 'n','<leader>bd','<cmd>bdelete %<cr>',desc = 'bdelete %',},
        },
        opts = {
                options = {
                        mode = "buffers",
                        numbers = "none",
                        show_buffer_close_icons = false,
                        separator_style = 'slant',
                        style_preset = 'minimal',
                },
        },
},

-- optional dependencies
{'nvim-tree/nvim-web-devicons', enahle = true, lazy = true,},

}
