return {

{
        "folke/zen-mode.nvim",
        enabled = true,
        lazy = true,
        cmd = 'ZenMode',
        keys = {{mode = 'n','<leader>z','<cmd>ZenMode<cr>',desc = 'ZenMode',},},
        -- opts = {twilight = {enabled = true},},
},

-- optional dependencies
{
        'folke/twilight.nvim',
        enabled = true,
        lazy = true,
},

}
