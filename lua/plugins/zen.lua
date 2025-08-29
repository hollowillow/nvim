return {

-- dim text around cursor
{
        'folke/twilight.nvim',
        cmd = 'Twilight',
        keys = { {'<leader>z','<cmd>Twilight<cr>',desc='Twilight'} }
},

-- full screen centralized buffer + twilight
{
        "folke/zen-mode.nvim",
        cmd = 'ZenMode',
        keys = { { '<leader>zz', '<cmd>ZenMode<cr>', desc='ZenMode'} }
}

}
