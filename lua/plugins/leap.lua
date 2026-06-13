return {

-- jump anywhere on screen
{
    'ggandor/leap.nvim',
    keys = {
        {
            mode={'n','x','o'},
            's',
            '<Plug>(leap-anywhere)',
            desc='Leap anywhere'
            },
        },
        opts = {case_sensitive = false},
}

}
