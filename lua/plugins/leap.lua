return {

{
        'ggandor/leap.nvim',
        enabled = true,
        lazy = true,
        opts = { case_sensitive = false, },
        keys = {
                {mode = { 'n', 'x', 'o', },'<leader>s', '<Plug>(leap-anywhere)',desc = 'Leap anywhere'},
        },
}

}
