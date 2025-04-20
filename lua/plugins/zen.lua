return {

{
        "folke/zen-mode.nvim",
        cmd = 'ZenMode',
        opts = {
                twilight = {enabled = true},
        },
        keys = {
                {mode = 'n','<leader>zm','<cmd>ZenMode<cr>',desc = 'ZenMode',},
        }
},

-- optional dependencies
{'folke/twilight.nvim', lazy = true,},

}
