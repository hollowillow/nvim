return {

-- project based marks
{
        'otavioschwanck/arrow.nvim',
        cond = true,
        keys = ';',
        opts = {
                show_icons = true,
                leader_key = ';',
                buffer_leader_key = 'm',
                index_keys = 'asdf',
                mappings = {
                        delete_mode = 'x',
                        toggle = ';'
                }
        }
}

}
