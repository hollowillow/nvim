return {

-- jump anywhere on screen
{
        'ggandor/leap.nvim',
        cond = true,
        keys = {
                {
                        mode={'n','x','o'},
                        '<leader>l',
                        '<Plug>(leap-anywhere)',
                        desc='Leap anywhere'
                },
        },
        opts = {case_sensitive = false},
}

}
