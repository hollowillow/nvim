return {

{
        'folke/twilight.nvim',
        cond = true,
        cmd = 'Twilight',
        keys = {
                {'<leader>z','<cmd>Twilight<cr>',desc='Twilight'}
        }
}, -- dim text around cursor

{
        "folke/zen-mode.nvim",
        cond = true,
        cmd = 'ZenMode',
        opts = {
                twilight = {enabled = true}
        },
        keys = {
                { '<leader>zz', '<cmd>ZenMode<cr>', desc='ZenMode'}
        }
} -- full screen centralized buffer + twilight

}
